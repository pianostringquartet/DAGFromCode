---
title: contentOffset
description: The content offset of the scroll view.
source: https://developer.apple.com/documentation/swiftui/scrollgeometry/contentoffset
timestamp: 2025-10-29T00:09:27.493Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollgeometry](/documentation/swiftui/scrollgeometry)

**Instance Property**

# contentOffset

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The content offset of the scroll view.

```swift
var contentOffset: CGPoint { get set }
```

## Discussion

This is the position of the scroll view within its overall content size. This value may extend before zero or beyond the content size when the content insets of the scroll view are non-zero or when rubber banding.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
