---
title: grayscale(_:)
description: Returns a filter that applies a grayscale adjustment.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/grayscale(_:)
timestamp: 2025-10-29T00:12:06.805Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# grayscale(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a filter that applies a grayscale adjustment.

```swift
static func grayscale(_ amount: Double) -> GraphicsContext.Filter
```

## Parameters

**amount**

An amount that controls the effect. A value of one makes the image completely gray. A value of zero leaves the result unchanged. Other values apply a linear multiplier effect.



## Return Value

A filter that applies a grayscale adjustment.

## Discussion

This filter is equivalent to the `grayscale` filter primitive defined by the Scalable Vector Graphics (SVG) specification.

## Manipulating color

- [saturation(_:)](/documentation/swiftui/graphicscontext/filter/saturation(_:))
- [colorInvert(_:)](/documentation/swiftui/graphicscontext/filter/colorinvert(_:))
- [colorMultiply(_:)](/documentation/swiftui/graphicscontext/filter/colormultiply(_:))
- [hueRotation(_:)](/documentation/swiftui/graphicscontext/filter/huerotation(_:))
- [colorMatrix(_:)](/documentation/swiftui/graphicscontext/filter/colormatrix(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
