---
title: hueRotation(_:)
description: Returns a filter that applies a hue rotation adjustment.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/huerotation(_:)
timestamp: 2025-10-29T00:12:41.538Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# hueRotation(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a filter that applies a hue rotation adjustment.

```swift
static func hueRotation(_ angle: Angle) -> GraphicsContext.Filter
```

## Parameters

**angle**

The amount by which to rotate the hue value of each pixel.



## Return Value

A filter that applies a hue rotation adjustment.

## Discussion

This filter is equivalent to the `hue-rotate` filter primitive defined by the Scalable Vector Graphics (SVG) specification.

## Manipulating color

- [saturation(_:)](/documentation/swiftui/graphicscontext/filter/saturation(_:))
- [colorInvert(_:)](/documentation/swiftui/graphicscontext/filter/colorinvert(_:))
- [colorMultiply(_:)](/documentation/swiftui/graphicscontext/filter/colormultiply(_:))
- [grayscale(_:)](/documentation/swiftui/graphicscontext/filter/grayscale(_:))
- [colorMatrix(_:)](/documentation/swiftui/graphicscontext/filter/colormatrix(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
