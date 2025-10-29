---
title: scale
description: The scale at which to render the image.
source: https://developer.apple.com/documentation/swiftui/imagerenderer/scale
timestamp: 2025-10-29T00:09:53.347Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [imagerenderer](/documentation/swiftui/imagerenderer)

**Instance Property**

# scale

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The scale at which to render the image.

```swift
@MainActor final var scale: CGFloat { get set }
```

## Discussion

This value is a ratio of view points to image pixels. This relationship means that values greater than `1.0` create an image larger than the original content view, and less than `1.0` creates a smaller image. The following example shows a 100 x 50 rectangle view and an image rendered from it with a `scale` of `2.0`, resulting in an image size of 200 x 100.

```swift
let rectangle = Rectangle()
    .frame(width: 100, height: 50)
let renderer = ImageRenderer(content: rectangle)
renderer.scale = 2.0
if let rendered = renderer.cgImage {
    print("Scaled image: \(rendered.width) x \(rendered.height)")
}
// Prints "Scaled image: 200 x 100"
```

The default value of this property is `1.0`.

## Accessing renderer properties

- [proposedSize](/documentation/swiftui/imagerenderer/proposedsize)
- [isOpaque](/documentation/swiftui/imagerenderer/isopaque)
- [colorMode](/documentation/swiftui/imagerenderer/colormode)
- [allowedDynamicRange](/documentation/swiftui/imagerenderer/alloweddynamicrange)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
