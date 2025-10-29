---
title: contentMinSize
description: A window resizability that’s partially derived from the window’s content.
source: https://developer.apple.com/documentation/swiftui/windowresizability/contentminsize
timestamp: 2025-10-29T00:11:09.088Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowresizability](/documentation/swiftui/windowresizability)

**Type Property**

# contentMinSize

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 13.0+, visionOS 1.0+

> A window resizability that’s partially derived from the window’s content.

```swift
static var contentMinSize: WindowResizability { get set }
```

## Discussion

Windows that use this resizability have:

- A minimum size that matches the minimum size of the window’s content.
- No maximum size.

## Getting the resizability

- [automatic](/documentation/swiftui/windowresizability/automatic)
- [contentSize](/documentation/swiftui/windowresizability/contentsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
