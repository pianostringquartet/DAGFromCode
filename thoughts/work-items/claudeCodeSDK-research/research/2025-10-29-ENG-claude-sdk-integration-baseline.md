---
title: "ClaudeCodeSDK integration baseline"
slug: claudeCodeSDK-research
created_at: 2025-10-29
created_by: codex
last_updated: 2025-10-29
last_updated_by: codex
status: draft
last_updated_note: "Initial survey of ClaudeCodeSDK for Codex CLI integration."
tags: [codex, sdk-integration, macos]
---

# ClaudeCodeSDK integration baseline

## Summary
ClaudeCodeSDK commit 614db0c89c6589b73c3736c7098d5717333a114f packages a Swift wrapper that shells out to the Claude Code CLI from macOS, layering environment management, streaming JSON decoding, retries, rate limiting, and native session access on top of `Process`. The SDK’s surfaces mirror the CLI contract, making it a useful comparator for future Codex CLI embedding work.

## Research Scope
- How the client launches and monitors Claude CLI processes from macOS Swift code.
- Which configuration and option types the SDK exposes to shape CLI invocation.
- What reliability features (errors, retries, rate limiting, cancellation) are built in.
- How the SDK inspects Claude’s native session storage for conversation history.

## Findings
### Process orchestration and CLI bridging
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:47-208` – `ClaudeCodeClient` wraps `/bin/zsh -l -c` `Process` instances, merges additional PATH entries, pipes prompts via stdin, and shares one implementation for single prompts, stdin pipelines, conversation continuation, and session resumption.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:330-467` – `executeClaudeCommand` captures stdout/stderr, injects stdin payloads, wires cancellation and timeout handlers, and classifies failures into `ClaudeCodeError` cases (installation, timeout, malformed output).
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:471-652` – Streaming prompts return a Combine `AnyPublisher<ResponseChunk, Error>` fed by a `PassthroughSubject` that parses each JSONL line as it arrives and surfaces init, user, assistant, and result events while still mapping launch failures to `ClaudeCodeError`.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:211-266` – `listSessions` issues `logs --output-format json`, retains an `ExecutedCommandInfo` snapshot (command, PATH, environment) for reproducibility, and decodes the CLI response into `[SessionInfo]` with snake-case mapping.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:471-845` – `handleStreamJsonOutput` waits for the process to prove it is running, then routes each JSONL line through `processJsonLine`, which switches on the `type` field to emit typed `ResponseChunk` events while logging decode problems with surrounding JSON for easier debugging.

### Configuration and CLI compatibility layers
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/ClaudeCodeConfiguration.swift:10-76` – `ClaudeCodeConfiguration` centralizes command name, optional working directory, custom environment, additional PATHs, suffixes, and tool deny-lists with a macOS-friendly default path set.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/ClaudeCodeOptions.swift:10-163` – `ClaudeCodeOptions` mirrors CLI flags (permissions, tools, MCP servers, prompts, model, timeout) and performs single-quoted shell escaping plus temporary MCP config file generation for in-memory server definitions.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/NvmPathDetector.swift:10-116` – The SDK can auto-append detected `nvm` node binaries to `additionalPaths`, allowing CLI discovery without manual PATH edits.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/ExecutedCommandInfo.swift:10-52` – Each invocation stores a debug snapshot containing the exact command string, environment, PATH, and method so developers can reproduce CLI calls inside Terminal.

### Reliability, cancellation, and rate controls
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeError.swift:10-118` – Rich error cases expose retry hints, permission detection, and installation checks, with convenience flags for rate limits, timeouts, and permissions.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/AbortController.swift:10-56` – A Swift AbortController/Signal pair mirrors the web API, letting callers terminate long-running CLI work and hooking directly into `Process.terminate()`.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/RetryPolicy.swift:11-199` – Built-in retry policies (default, conservative, aggressive) drive exponential backoff with jitter and extend the `ClaudeCode` protocol via helper methods like `runSinglePromptWithRetry`.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/RateLimiter.swift:11-200` – An actor-powered token bucket limiter can wrap any `ClaudeCode` implementation to throttle requests per minute while preserving the protocol surface.

### Native session storage access
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Storage/ClaudeNativeSessionStorage.swift:11-238` – `ClaudeNativeSessionStorage` reads Claude CLI’s `~/.claude/projects` folders, decodes JSONL session logs, reconstructs message timelines with ISO8601 parsing, and supports project-wide aggregation.
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Storage/ClaudeSessionModels.swift:10-179` – Companion models represent stored sessions and messages, including role metadata and raw JSONL structures for downstream tooling.

## Code References
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:47-652`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeError.swift:10-118`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/ClaudeCodeConfiguration.swift:10-76`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/ClaudeCodeOptions.swift:10-163`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/ExecutedCommandInfo.swift:10-52`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/AbortController.swift:10-56`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/RetryPolicy.swift:11-199`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/RateLimiter.swift:11-200`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/NvmPathDetector.swift:10-116`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Storage/ClaudeNativeSessionStorage.swift:11-238`
- `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Storage/ClaudeSessionModels.swift:10-179`

## Architecture Documentation
`ClaudeCodeClient` composes Process launching, streaming parsing, and failure classification, while the broader module keeps potentially mutable concerns (CLI path configuration, CLI flags, retries, rate limits, cancellation) in separate value types or wrappers so they can be layered without rewriting the core client. Storage helpers operate independently of live CLI calls, letting macOS apps pull cached Claude conversations straight from disk. This separation suggests a split between Codex CLI shell orchestration, reliability wrappers, and session persistence we can emulate. `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Client/ClaudeCodeClient.swift:47-652`, `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/API/ClaudeCodeConfiguration.swift:10-76`, `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Utilities/RetryPolicy.swift:11-199`, `research_tmp/ClaudeCodeSDK/Sources/ClaudeCodeSDK/Storage/ClaudeNativeSessionStorage.swift:11-238`

## Historical Context (if applicable)
- None noted.

## Related Research
- None yet.

## Open Questions
- Which parts of the SDK (process launcher vs. option translation vs. storage reader) should Codex CLI mirror versus replace with our own abstractions?
- How will Codex CLI handle authentication, rate limiting, or MCP equivalents that differ from Claude’s flags?
- Do we need a custom persistence format, or can we provide a similar JSONL-backed session store for Mac users?
