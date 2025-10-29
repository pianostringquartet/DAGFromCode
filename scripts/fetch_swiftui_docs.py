#!/usr/bin/env python3
"""Mirror SwiftUI documentation from sosumi.ai into swiftui_documentation/.

Usage:
    python scripts/fetch_swiftui_docs.py [--force] [--workers N]

The script performs a breadth-first crawl starting at
https://sosumi.ai/documentation/swiftui, fetching Markdown copies of every
linked page whose path begins with /documentation/swiftui. Each page is stored
under swiftui_documentation/, mirroring the remote hierarchy with sanitized
filenames. A manifest (swiftui_documentation/manifest.json) stores metadata so
subsequent runs can skip unchanged pages via ETag/Last-Modified headers.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import sys
from collections import deque
from concurrent.futures import FIRST_COMPLETED, ThreadPoolExecutor, wait
from dataclasses import dataclass
from datetime import datetime, timezone
from pathlib import Path
from typing import Dict, Iterable, Optional, Set, Tuple
from urllib.error import HTTPError, URLError
from urllib.parse import urljoin
from urllib.request import Request, urlopen


BASE_URL = "https://sosumi.ai"
ROOT_PATH = "/documentation/swiftui"
OUTPUT_ROOT = Path("swiftui_documentation")
MANIFEST_PATH = OUTPUT_ROOT / "manifest.json"
LINK_START_PATTERN = re.compile(r"\[[^\]]+\]\(")
SANITIZE_PATTERN = re.compile(r"[^A-Za-z0-9._()-]+")


@dataclass
class ManifestEntry:
    url: str
    path: str  # relative path under OUTPUT_ROOT
    etag: Optional[str]
    last_modified: Optional[str]
    sha256: Optional[str]
    fetched_at: Optional[str]

    @classmethod
    def from_dict(cls, url: str, data: Dict[str, str]) -> "ManifestEntry":
        return cls(
            url=url,
            path=data.get("path", ""),
            etag=data.get("etag"),
            last_modified=data.get("last_modified"),
            sha256=data.get("sha256"),
            fetched_at=data.get("fetched_at"),
        )

    def to_dict(self) -> Dict[str, Optional[str]]:
        return {
            "path": self.path,
            "etag": self.etag,
            "last_modified": self.last_modified,
            "sha256": self.sha256,
            "fetched_at": self.fetched_at,
        }


def load_manifest() -> Dict[str, ManifestEntry]:
    if not MANIFEST_PATH.exists():
        return {}
    try:
        data = json.loads(MANIFEST_PATH.read_text())
    except json.JSONDecodeError as exc:
        print(f"Warning: manifest is corrupt ({exc}); starting fresh.", file=sys.stderr)
        return {}
    entries = {}
    for url, payload in data.get("entries", {}).items():
        entries[url] = ManifestEntry.from_dict(url, payload)
    return entries


def save_manifest(entries: Dict[str, ManifestEntry]) -> None:
    manifest = {
        "generated_at": datetime.now(timezone.utc).isoformat(),
        "entries": {url: entry.to_dict() for url, entry in sorted(entries.items())},
    }
    MANIFEST_PATH.write_text(json.dumps(manifest, indent=2, sort_keys=False) + "\n")


def sanitize_segment(segment: str) -> str:
    if not segment:
        return "index"
    cleaned = SANITIZE_PATTERN.sub("_", segment)
    cleaned = cleaned.strip("._")
    return cleaned or "index"


def url_to_relative_path(url_path: str) -> Path:
    """Map a remote URL path to a local relative Path under OUTPUT_ROOT."""

    assert url_path.startswith("/"), f"Expected absolute path, got {url_path}"
    parts = [sanitize_segment(part) for part in url_path.lstrip("/").split("/") if part]
    if not parts:
        parts = ["index"]
    filename = parts[-1] + ".md"
    return Path(*parts[:-1]) / filename


def extract_links(markdown: str) -> Set[str]:
    """Extract SwiftUI documentation links from Markdown.

    The original implementation relied on a regex that truncated links containing
    signature parentheses, dropping suffixes like ``-swift.method``. This parser
    advances character-by-character, treating closing parentheses as part of the
    URL when they balance a previously seen ``(``, or when additional path
    characters follow immediately (for cases like ``)-swift.method``). Only the
    final delimiter parenthesis that closes the Markdown link is excluded.
    """

    links: Set[str] = set()
    for match in LINK_START_PATTERN.finditer(markdown):
        start = match.end()
        if not markdown.startswith("/documentation/", start):
            continue

        cursor = start
        length = len(markdown)
        depth = 0
        buffer: list[str] = []

        while cursor < length:
            ch = markdown[cursor]

            if ch == ")":
                next_char = markdown[cursor + 1] if cursor + 1 < length else ""
                if depth > 0:
                    depth -= 1
                    buffer.append(ch)
                    cursor += 1
                    continue
                if next_char and next_char not in ") \t\r\n":
                    buffer.append(ch)
                    cursor += 1
                    continue
                cursor += 1  # consume the closing delimiter
                break

            if ch.isspace():
                break

            buffer.append(ch)
            if ch == "(":
                depth += 1
            cursor += 1

        if not buffer:
            continue

        url = "".join(buffer).split("#", 1)[0]

        open_parens = url.count("(")
        close_parens = url.count(")")
        if open_parens > close_parens:
            url += ")" * (open_parens - close_parens)

        if url.startswith(ROOT_PATH):
            links.add(url)

    return links

@dataclass
class FetchResult:
    path: str
    url: str
    status: int
    headers: Dict[str, str]
    content: Optional[bytes]


def fetch_url(
    url: str,
    *,
    etag: Optional[str] = None,
    last_modified: Optional[str] = None,
    force: bool = False,
) -> Tuple[int, Dict[str, str], Optional[bytes]]:
    headers = {"User-Agent": "swiftui-doc-fetcher/1.0"}
    if etag and not force:
        headers["If-None-Match"] = etag
    if last_modified and not force:
        headers["If-Modified-Since"] = last_modified

    request = Request(url, headers=headers)
    try:
        with urlopen(request) as response:
            status = response.status
            response_headers = dict(response.headers)
            if status == 304:
                return status, response_headers, None
            content = response.read()
            return status, response_headers, content
    except HTTPError as exc:
        if exc.code == 304:
            return exc.code, dict(exc.headers), None
        raise


def sha256_digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def ensure_parent(path: Path) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)


def write_file(path: Path, data: bytes) -> None:
    ensure_parent(path)
    path.write_bytes(data)


def fetch_task(path: str, entry: Optional[ManifestEntry], force: bool) -> FetchResult:
    url = urljoin(BASE_URL, path)
    etag = entry.etag if entry else None
    last_modified = entry.last_modified if entry else None
    status, headers, content = fetch_url(url, etag=etag, last_modified=last_modified, force=force)
    return FetchResult(path=path, url=url, status=status, headers=headers, content=content)


def crawl(force: bool = False, workers: int = 4) -> None:
    OUTPUT_ROOT.mkdir(parents=True, exist_ok=True)

    manifest = load_manifest()
    visited: Set[str] = set()
    queue: deque[str] = deque([ROOT_PATH])

    downloaded = 0
    skipped = 0
    errors = 0
    since_save = 0

    future_map: Dict[object, str] = {}

    try:
        with ThreadPoolExecutor(max_workers=max(1, workers)) as executor:
            while queue or future_map:
                while queue and len(future_map) < workers * 2:
                    path = queue.popleft()
                    if path in visited:
                        continue
                    visited.add(path)
                    url = urljoin(BASE_URL, path)
                    entry = manifest.get(url)
                    future = executor.submit(fetch_task, path, entry, force)
                    future_map[future] = path

                if not future_map:
                    continue

                done, _ = wait(future_map, return_when=FIRST_COMPLETED)

                for future in done:
                    path = future_map.pop(future)
                    try:
                        result = future.result()
                    except (HTTPError, URLError) as exc:
                        errors += 1
                        url = urljoin(BASE_URL, path)
                        print(f"Error fetching {url}: {exc}", file=sys.stderr)
                        continue
                    except Exception as exc:  # pragma: no cover - unexpected
                        errors += 1
                        url = urljoin(BASE_URL, path)
                        print(f"Unexpected error fetching {url}: {exc}", file=sys.stderr)
                        continue

                    url = result.url
                    status = result.status
                    headers = result.headers
                    content = result.content
                    rel_path = url_to_relative_path(path)
                    dest = OUTPUT_ROOT / rel_path

                    if content is None:
                        skipped += 1
                        print(f"Not modified: {url}")
                    else:
                        write_file(dest, content)
                        downloaded += 1
                        since_save += 1

                        digest = sha256_digest(content)
                        fetched_at = datetime.now(timezone.utc).isoformat()
                        etag_new = headers.get("ETag")
                        last_modified_new = headers.get("Last-Modified")

                        manifest[url] = ManifestEntry(
                            url=url,
                            path=str(rel_path),
                            etag=etag_new,
                            last_modified=last_modified_new,
                            sha256=digest,
                            fetched_at=fetched_at,
                        )

                        if since_save >= 25:
                            save_manifest(manifest)
                            since_save = 0

                        if status == 200:
                            print(f"Fetched {url} -> {rel_path}")
                        else:
                            print(f"Fetched {url} (status {status}) -> {rel_path}")

                        text = content.decode("utf-8", errors="ignore")
                        for link in extract_links(text):
                            if link not in visited:
                                queue.append(link)
    finally:
        save_manifest(manifest)
        print("\nSummary:")
        print(f"  Downloaded: {downloaded}")
        print(f"  Skipped (not modified): {skipped}")
        print(f"  Errors: {errors}")


def parse_args(argv: Iterable[str]) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Mirror SwiftUI docs locally.")
    parser.add_argument(
        "--force",
        action="store_true",
        help="Fetch all pages even when ETag/Last-Modified indicate no change.",
    )
    parser.add_argument(
        "--workers",
        type=int,
        default=4,
        help="Number of concurrent download workers (default: 4).",
    )
    return parser.parse_args(argv)


def main(argv: Iterable[str]) -> None:
    args = parse_args(argv)
    try:
        crawl(force=args.force, workers=args.workers)
    except KeyboardInterrupt:
        print("Interrupted by user", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main(sys.argv[1:])
