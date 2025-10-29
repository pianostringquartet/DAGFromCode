---
title: "Codex CLI parity study for ClaudeCodeSDK"
slug: codex-cli-version-of-ClaudeCodeSDK
created_at: 2025-10-29
created_by: codex
last_updated: 2025-10-29
last_updated_by: codex
status: draft
last_updated_note: "Captured ClaudeCodeSDK capabilities to inform a Codex CLI bridge."
tags: [codex, sdk-analysis, cli]
---

# Codex CLI parity study for ClaudeCodeSDK

## Summary
ClaudeCodeSDK commit 614db0c89c6589b73c3736c7098d5717333a114f demonstrates how a macOS Swift package shells into the Claude Code CLI while preserving environment context, streaming responses, retry semantics, and session history. Replicating these behaviors for a Codex CLI equivalent means reproducing the `Process` orchestration, option-to-flag encoding, resilience helpers, and storage readers surfaced here, while re-targeting the executable and protocols toward Codex.

## Research scope
- Understand how `ClaudeCodeClient` launches, monitors, and cancels CLI processes.
- Document configuration and MCP option modeling that translate Swift settings into CLI flags.
- Inventory resilience features (errors, retries, rate limiting, validation) relied on by integrators.
- Trace session storage access and example UI flows to gauge consumer expectations.
- Note existing test coverage that guards the contract we would need to mirror.

## Findings
### CLI process management
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:47` – `configuredProcess` boots `/bin/zsh -l -c`, merges additional PATH entries, injects per-call environment variables, and respects optional working directories and suffixes to match CLI invocation expectations.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:109` – `runSinglePrompt`, `runWithStdin`, `continueConversation`, and `resumeConversation` share a common path that assembles arguments via `ClaudeCodeOptions`, keeps prompts on stdin, and toggles verbose mode when streaming.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:330` – `executeClaudeCommand` captures stdout/stderr, wires in optional stdin payloads, installs timeout and abort hooks, and stamps `ExecutedCommandInfo` snapshots so developers can reproduce the exact command with environment context.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:471` – Streaming runs return an `AnyPublisher<ResponseChunk, Error>` fed by `handleStreamJsonOutput`, which buffers JSONL chunks, classifies system/user/assistant/result messages, and surfaces launch failures as `ClaudeCodeError` instead of hanging publishers.

### Configuration and MCP modeling
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/ClaudeCodeConfiguration.swift:10` – `ClaudeCodeConfiguration` centralizes the executable name, working directory, environment map, PATH augmentation, command suffix, and disallowed tool list, providing the knobs we would retarget toward a Codex CLI binary.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/ClaudeCodeOptions.swift:12` – `ClaudeCodeOptions` mirrors Claude’s CLI flags (permission modes, tool allow/deny lists, prompts, model, timeout, MCP config) and single-quote escapes values before appending them to the shell command string.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/McpServerConfig.swift:10` – Structured `McpServerConfiguration` enums encode both stdio and SSE servers, preserving command/args/env metadata so the client can materialize temporary config files.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/MCPToolFormatter.swift:10` – MCP helpers format `mcp__<server>__<tool>` identifiers and wildcard patterns, enabling wildcard approvals when options load external toolchains.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/NvmPathDetector.swift:10` – `NvmPathDetector` extends `ClaudeCodeConfiguration` with helper methods that detect local nvm paths and append them to PATH, reducing setup friction for CLI discovery.

### Resilience and observability
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeError.swift:10` – Rich `ClaudeCodeError` cases classify installation, timeout, rate limiting, permission, retryable, and launch issues while exposing convenience flags and suggested retry intervals.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/AbortController.swift:10` – A Swift `AbortController`/`AbortSignal` pair mirrors the web API and hooks into `Process.terminate()`, supporting cooperative cancellation from UI components.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/RetryPolicy.swift:11` – `RetryPolicy`, `RetryHandler`, and protocol extensions provide configurable backoff (default/conservative/aggressive) and wrap core client calls with jittered retries.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/RateLimiter.swift:11` – An actor-based token bucket plus `RateLimitedClaudeCode` wrapper throttles downstream calls, enforcing requests-per-minute and burst limits around any `ClaudeCode` implementation.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/ExecutedCommandInfo.swift:10` – Each invocation records the full command string, PATH, environment snapshot, shell executable, and execution method for diagnostics and reproduction.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:278` – `validateCommand` shells out to `which` and optionally logs PATH to help diagnose when dependencies are missing.

### Session storage integration
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Storage/ClaudeNativeSessionStorage.swift:11` – `ClaudeNativeSessionStorage` decodes Claude CLI’s `~/.claude/projects` JSONL artifacts, reconstructs session timelines, and exposes project-level, per-session, and aggregate queries.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Storage/ClaudeSessionModels.swift:10` – `ClaudeStoredSession`, `ClaudeStoredMessage`, and `ClaudeJSONLEntry` model the on-disk schema, including git metadata, roles, and message content adapters, which we would need to reimplement if Codex CLI persists conversations differently.

### Example app usage patterns
- `research_tmp/ClaudeCodeSDK/Example/ClaudeCodeSDKExample/ClaudeCodeSDKExample/Model/ChatViewModel.swift:14` – The example view model streams Combine chunks, tracks session IDs, merges MCP tool wildcards, and surfaces tool-use/tool-result/thinking events, showing how consumers expect to drive a CLI-backed assistant.
- `research_tmp/ClaudeCodeSDK/Example/ClaudeCodeSDKExample/ClaudeCodeSDKExample/Chat/ChatView.swift:12` – `ChatView` wires the model into a SwiftUI chat interface with session browsing, MCP configuration sheets, and cancellation controls—useful for envisioning Codex CLI adapters.
- `research_tmp/ClaudeCodeSDK/Example/ClaudeCodeSDKExample/ClaudeCodeSDKExample/Chat/MCPConfigView.swift:10` – UI affordances let users point at MCP config files and load example templates, implying parity requirements for Codex CLI tool registration.

### Regression safeguards
- `research_tmp/ClaudeCodeSDK/Tests/ClaudeCodeSDKTests/OptionsTests.swift:12` – Options tests ensure CLI arguments reflect all configuration surfaces and that continue/resume flags stay out of raw args.
- `research_tmp/ClaudeCodeSDK/Tests/ClaudeCodeSDKTests/ShellEscapingTests.swift:11` – Shell escaping tests confirm prompts with braces, quotes, and JSON remain safely quoted, emphasizing an area to replicate carefully.
- `research_tmp/ClaudeCodeSDK/Tests/ClaudeCodeSDKTests/RetryLogicTests.swift:12` – Retry policy tests assert default/conservative/aggressive parameters and jitter behavior.
- `research_tmp/ClaudeCodeSDK/Tests/ClaudeCodeSDKTests/RateLimitingTests.swift:12` – Rate limiter tests cover token accounting, wait semantics, and wrapper integration.
- `research_tmp/ClaudeCodeSDK/Tests/ClaudeCodeSDKTests/ProcessLaunchTests.swift:13` – Process launch tests exercise failure paths for missing commands, malformed suffixes, empty stderr, and successful fallback scenarios, demonstrating expected diagnostics.

## Code references
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:47`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:109`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:330`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:471`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/ClaudeCodeConfiguration.swift:10`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/ClaudeCodeOptions.swift:12`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/McpServerConfig.swift:10`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/MCPToolFormatter.swift:10`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/NvmPathDetector.swift:10`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeError.swift:10`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/AbortController.swift:10`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/RetryPolicy.swift:11`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/RateLimiter.swift:11`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/ExecutedCommandInfo.swift:10`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Storage/ClaudeNativeSessionStorage.swift:11`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Storage/ClaudeSessionModels.swift:10`
- `research_tmp/ClaudeCodeSDK/Example/ClaudeCodeSDKExample/ClaudeCodeSDKExample/Model/ChatViewModel.swift:14`
- `research_tmp/ClaudeCodeSDK/Example/ClaudeCodeSDKExample/ClaudeCodeSDKExample/Chat/ChatView.swift:12`
- `research_tmp/ClaudeCodeSDK/Example/ClaudeCodeSDKExample/ClaudeCodeSDKExample/Chat/MCPConfigView.swift:10`
- `research_tmp/ClaudeCodeSDK/Tests/ClaudeCodeSDKTests/OptionsTests.swift:12`
- `research_tmp/ClaudeCodeSDK/Tests/ClaudeCodeSDKTests/ShellEscapingTests.swift:11`
- `research_tmp/ClaudeCodeSDK/Tests/ClaudeCodeSDKTests/RetryLogicTests.swift:12`
- `research_tmp/ClaudeCodeSDK/Tests/ClaudeCodeSDKTests/RateLimitingTests.swift:12`
- `research_tmp/ClaudeCodeSDK/Tests/ClaudeCodeSDKTests/ProcessLaunchTests.swift:13`

## Architecture documentation
ClaudeCodeSDK layers a shell-bridged client on top of the Claude CLI: Swift callers construct `ClaudeCodeConfiguration` and `ClaudeCodeOptions`, which feed `ClaudeCodeClient` to assemble `/bin/zsh -l -c` commands. Requests stream into the CLI via stdin, while stdout JSONL chunks are decoded into strongly typed `ResponseChunk` values that drive UI updates. Reliability helpers (abort controller, retry handler, rate limiter) wrap the process boundary, and each execution logs an `ExecutedCommandInfo` snapshot for reproducibility. Session history lives outside the process—in `~/.claude/projects`—and `ClaudeNativeSessionStorage` parses those artifacts so UIs can resume conversations or inspect history.

## Historical context
- `thoughts/work-items/claudeCodeSDK-research/research/2025-10-29-ENG-claude-sdk-integration-baseline.md` – Prior survey of ClaudeCodeSDK features for earlier Codex CLI alignment work.

## Related research
- `thoughts/work-items/codex-cli-integration/research` – Use this investigation alongside the broader Codex CLI integration notes when formalizing implementation tasks.

## Open questions
- Does the Codex CLI expose MCP-compatible tooling, or do we need an alternative abstraction for Codex-specific tool registration?
- How will Codex CLI sessions persist on disk, and can we mirror Claude’s JSONL reader or must we design a new storage adapter?
- Which portions of ClaudeCodeSDK’s retry and rate-limiting heuristics remain valid for Codex service quotas, and where do we need new defaults?
- Are there existing Codex CLI commands requiring additional flags beyond what `ClaudeCodeOptions` models (e.g., Codex-specific permission flows)?
