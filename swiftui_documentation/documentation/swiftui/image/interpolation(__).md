---
title: interpolation(_:)
description: Specifies the current level of quality for rendering an image that requires interpolation.
source: https://developer.apple.com/documentation/swiftui/image/interpolation(_:)
timestamp: 2025-10-29T00:14:10.409Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Instance Method**

# interpolation(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Specifies the current level of quality for rendering an image that requires interpolation.

```swift
func interpolation(_ interpolation: Image.Interpolation) -> Image
```

## Parameters

**interpolation**

The quality level, expressed as a value of the `Interpolation` type, that SwiftUI applies when interpolating an image.



## Return Value

An image with the given interpolation value set.

## Discussion

See the article [Fitting-Images-into-Available](/documentation/swiftui/fitting-images-into-available-space) for examples of using `interpolation(_:)` when scaling an [Image](/documentation/swiftui/image).

## Specifying rendering behavior

- [antialiased(_:)](/documentation/swiftui/image/antialiased(_:))
- [symbolRenderingMode(_:)](/documentation/swiftui/image/symbolrenderingmode(_:))
- [renderingMode(_:)](/documentation/swiftui/image/renderingmode(_:))
- [Image.TemplateRenderingMode](/documentation/swiftui/image/templaterenderingmode)
- [Image.Interpolation](/documentation/swiftui/image/interpolation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
