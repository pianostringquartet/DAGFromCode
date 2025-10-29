---
title: "Plan – mirror SwiftUI docs into swiftui_documentation/"
slug: swiftui-frame-modifier-node
created_at: 2025-10-28
created_by: codex
status: draft
tags: [swiftui, docs, tooling]
---

# Plan – mirror SwiftUI docs into swiftui_documentation/

## Goal
Download the public SwiftUI documentation (via sosumi.ai) and store a local mirror under `swiftui_documentation/`, complete with a manifest for incremental updates.

## Tasks
1. Scaffold directories and support files
   1.1 Create `swiftui_documentation/` (root) and a placeholder `manifest.json`.
   1.2 Ensure `scripts/` exists and decide on script name (`fetch_swiftui_docs.py`).
2. Implement Python ingestion script
   2.1 Fetch root index (`https://sosumi.ai/documentation/swiftui`), write to `swiftui_documentation/index.md`.
   2.2 Parse Markdown links for all `/documentation/` paths; build a queue of pages.
   2.3 For each link, download Markdown, sanitize filename, and write it under `swiftui_documentation/` mirroring the path.
   2.4 Record metadata (URL, timestamp, checksum, local path) in memory for manifest updates.
   2.5 Support incremental runs: respect existing manifest, use HTTP `ETag`/`Last-Modified` when available to skip unchanged pages.
3. Persist manifest
   3.1 Write `swiftui_documentation/manifest.json` capturing fetched URL, local file path, last fetched timestamp, etag/last-modified, and file hash.
   3.2 On subsequent runs, read manifest, compare server headers, and only re-fetch when changed.
4. Verification and logging
   4.1 Script prints summary (downloaded, skipped, errors) at end.
   4.2 Optionally add `--force` flag to ignore cache and re-download.
   4.3 After initial run, confirm key files exist (e.g., `view/frame(width_height_alignment).md`).
5. Future enhancements (optional)
   5.1 Parallel downloads with rate limiting.
   5.2 Markdown lint or integrity check ensuring every link from `index.md` has a local file.
   5.3 Extend allow-list for cross-framework links if needed later.

## Risks / open questions
- Sanitizing filenames: settle on a reversible scheme (e.g., replace `/` with dirs, `:` with `_`, `?` removed) and document it in the manifest.
- Respecting sosumi.ai rate limits. Start with sequential requests and consider adding delay or concurrency caps.
- Reruns when offline: script should gracefully warn and exit without touching manifest.

