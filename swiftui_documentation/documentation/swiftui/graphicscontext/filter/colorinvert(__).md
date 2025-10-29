---
title: colorInvert(_:)
description: Returns a filter that inverts the color of their results.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/colorinvert(_:)
timestamp: 2025-10-29T00:09:31.024Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# colorInvert(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a filter that inverts the color of their results.

```swift
static func colorInvert(_ amount: Double = 1) -> GraphicsContext.Filter
```

## Parameters

**amount**

The inversion amount. A value of one results in total inversion, while a value of zero leaves the result unchanged. Other values apply a linear multiplier effect.



## Return Value

A filter that applies a color inversion.

## Discussion

This filter is equivalent to the `invert` filter primitive defined by the Scalable Vector Graphics (SVG) specification.

## Manipulating color

- [saturation(_:)](/documentation/swiftui/graphicscontext/filter/saturation(_:))
- [colorMultiply(_:)](/documentation/swiftui/graphicscontext/filter/colormultiply(_:))
- [hueRotation(_:)](/documentation/swiftui/graphicscontext/filter/huerotation(_:))
- [grayscale(_:)](/documentation/swiftui/graphicscontext/filter/grayscale(_:))
- [colorMatrix(_:)](/documentation/swiftui/graphicscontext/filter/colormatrix(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
