---
title: isOpaque
description: A Boolean that indicates whether the canvas is fully opaque.
source: https://developer.apple.com/documentation/swiftui/canvas/isopaque
timestamp: 2025-10-29T00:14:50.696Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [canvas](/documentation/swiftui/canvas)

**Instance Property**

# isOpaque

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A Boolean that indicates whether the canvas is fully opaque.

```swift
var isOpaque: Bool { get set }
```

## Discussion

You might be able to improve performance by setting this value to `true`, making the canvas is fully opaque. However, in that case, the result of drawing a non-opaque image into the canvas is undefined.

## Managing opacity and color

- [colorMode](/documentation/swiftui/canvas/colormode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
