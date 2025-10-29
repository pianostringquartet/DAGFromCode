---
title: saturation(_:)
description: Returns a filter that applies a saturation adjustment.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/saturation(_:)
timestamp: 2025-10-29T00:11:58.982Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# saturation(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a filter that applies a saturation adjustment.

```swift
static func saturation(_ amount: Double) -> GraphicsContext.Filter
```

## Parameters

**amount**

The amount of the saturation adjustment. A value of zero to completely desaturates each pixel, while a value of one makes no change. You can use values greater than one.



## Return Value

A filter that applies a saturation adjustment.

## Discussion

This filter is equivalent to the `saturate` filter primitive defined by the Scalable Vector Graphics (SVG) specification.

## Manipulating color

- [colorInvert(_:)](/documentation/swiftui/graphicscontext/filter/colorinvert(_:))
- [colorMultiply(_:)](/documentation/swiftui/graphicscontext/filter/colormultiply(_:))
- [hueRotation(_:)](/documentation/swiftui/graphicscontext/filter/huerotation(_:))
- [grayscale(_:)](/documentation/swiftui/graphicscontext/filter/grayscale(_:))
- [colorMatrix(_:)](/documentation/swiftui/graphicscontext/filter/colormatrix(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
