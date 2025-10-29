---
title: contentSize
description: A window resizability that’s derived from the window’s content.
source: https://developer.apple.com/documentation/swiftui/windowresizability/contentsize
timestamp: 2025-10-29T00:11:53.981Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowresizability](/documentation/swiftui/windowresizability)

**Type Property**

# contentSize

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 13.0+, visionOS 1.0+

> A window resizability that’s derived from the window’s content.

```swift
static var contentSize: WindowResizability { get set }
```

## Discussion

Windows that use this resizability have:

- A minimum size that matches the minimum size of the window’s content.
- A maximum size that matches the maximum size of the window’s content.

## Getting the resizability

- [automatic](/documentation/swiftui/windowresizability/automatic)
- [contentMinSize](/documentation/swiftui/windowresizability/contentminsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
