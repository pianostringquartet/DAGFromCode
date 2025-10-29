---
title: automatic
description: The automatic window resizability.
source: https://developer.apple.com/documentation/swiftui/windowresizability/automatic
timestamp: 2025-10-29T00:10:55.348Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowresizability](/documentation/swiftui/windowresizability)

**Type Property**

# automatic

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 13.0+, visionOS 1.0+

> The automatic window resizability.

```swift
static var automatic: WindowResizability { get set }
```

## Discussion

When you use automatic resizability, SwiftUI applies a resizing strategy that’s appropriate for the scene type:

- Windows from [Window Group](/documentation/swiftui/windowgroup), [Window](/documentation/swiftui/window), and [Document Group](/documentation/swiftui/documentgroup) scene declarations use the [content Min Size](/documentation/swiftui/windowresizability/contentminsize) strategy.
- A window from a [Settings](/documentation/swiftui/settings) scene declaration uses the [content Size](/documentation/swiftui/windowresizability/contentsize) strategy.
- Windows on visionOS with a window style of [volumetric](/documentation/swiftui/windowstyle/volumetric) use the [content Size](/documentation/swiftui/windowresizability/contentsize) strategy.

Automatic resizability is the default if you don’t specify another value using the [windowResizability(_:)](/documentation/swiftui/scene/windowresizability(_:)) scene modifier.

## Getting the resizability

- [contentMinSize](/documentation/swiftui/windowresizability/contentminsize)
- [contentSize](/documentation/swiftui/windowresizability/contentsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
