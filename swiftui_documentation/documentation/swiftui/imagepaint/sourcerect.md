---
title: sourceRect
description: A unit-space rectangle defining how much of the source image to draw.
source: https://developer.apple.com/documentation/swiftui/imagepaint/sourcerect
timestamp: 2025-10-29T00:11:40.323Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [imagepaint](/documentation/swiftui/imagepaint)

**Instance Property**

# sourceRect

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A unit-space rectangle defining how much of the source image to draw.

```swift
var sourceRect: CGRect
```

## Discussion

The results are undefined if this rectangle selects areas outside the `[0, 1]` range in either axis.

## Configuring the image paint style

- [image](/documentation/swiftui/imagepaint/image)
- [scale](/documentation/swiftui/imagepaint/scale)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
