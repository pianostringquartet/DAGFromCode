---
title: colorMatrix(_:)
description: Returns a filter that multiplies by a given color matrix.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/colormatrix(_:)
timestamp: 2025-10-29T00:14:30.494Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# colorMatrix(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a filter that multiplies by a given color matrix.

```swift
static func colorMatrix(_ matrix: ColorMatrix) -> GraphicsContext.Filter
```

## Parameters

**matrix**

A [Color Matrix](/documentation/swiftui/colormatrix) instance used by the filter.



## Return Value

A filter that transforms color using the given matrix.

## Discussion

This filter is equivalent to the `feColorMatrix` filter primitive defined by the Scalable Vector Graphics (SVG) specification.

The filter creates the output color `[R', G', B', A']` at each pixel from an input color `[R, G, B, A]` by multiplying the input color by the square matrix formed by the first four columns of the [Color Matrix](/documentation/swiftui/colormatrix), then adding the fifth column to the result:

```swift
R' = r1 ✕ R + r2 ✕ G + r3 ✕ B + r4 ✕ A + r5
G' = g1 ✕ R + g2 ✕ G + g3 ✕ B + g4 ✕ A + g5
B' = b1 ✕ R + b2 ✕ G + b3 ✕ B + b4 ✕ A + b5
A' = a1 ✕ R + a2 ✕ G + a3 ✕ B + a4 ✕ A + a5
```

## Manipulating color

- [saturation(_:)](/documentation/swiftui/graphicscontext/filter/saturation(_:))
- [colorInvert(_:)](/documentation/swiftui/graphicscontext/filter/colorinvert(_:))
- [colorMultiply(_:)](/documentation/swiftui/graphicscontext/filter/colormultiply(_:))
- [hueRotation(_:)](/documentation/swiftui/graphicscontext/filter/huerotation(_:))
- [grayscale(_:)](/documentation/swiftui/graphicscontext/filter/grayscale(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
