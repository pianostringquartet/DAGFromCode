---
title: isOpaque
description: A Boolean value that indicates whether the alpha channel of the image is fully opaque.
source: https://developer.apple.com/documentation/swiftui/imagerenderer/isopaque
timestamp: 2025-10-29T00:10:09.353Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [imagerenderer](/documentation/swiftui/imagerenderer)

**Instance Property**

# isOpaque

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A Boolean value that indicates whether the alpha channel of the image is fully opaque.

```swift
@MainActor final var isOpaque: Bool { get set }
```

## Discussion

Setting this value to `true`, meaning the alpha channel is opaque, may improve performance. Don’t render non-opaque pixels to a renderer declared as opaque. This property defaults to `false`.

## Accessing renderer properties

- [proposedSize](/documentation/swiftui/imagerenderer/proposedsize)
- [scale](/documentation/swiftui/imagerenderer/scale)
- [colorMode](/documentation/swiftui/imagerenderer/colormode)
- [allowedDynamicRange](/documentation/swiftui/imagerenderer/alloweddynamicrange)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
