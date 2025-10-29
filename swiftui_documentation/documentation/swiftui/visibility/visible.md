---
title: Visibility.visible
description: The element may be visible.
source: https://developer.apple.com/documentation/swiftui/visibility/visible
timestamp: 2025-10-29T00:11:57.952Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visibility](/documentation/swiftui/visibility)

**Case**

# Visibility.visible

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The element may be visible.

```swift
case visible
```

## Discussion

Some APIs may use this value to represent a hint or preference, rather than a mandatory assertion. For example, setting list row separator visibility to `visible` using the [listRowSeparator(_:edges:)](/documentation/swiftui/view/listrowseparator(_:edges:)) modifier may not always result in any visible separators, especially for list styles that do not include separators as part of their design.

## Getting visibility options

- [Visibility.automatic](/documentation/swiftui/visibility/automatic)
- [Visibility.hidden](/documentation/swiftui/visibility/hidden)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
