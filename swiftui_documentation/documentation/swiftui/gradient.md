---
title: Gradient
description: A color gradient represented as an array of color stops, each having a parametric location value.
source: https://developer.apple.com/documentation/swiftui/gradient
timestamp: 2025-10-29T00:13:29.249Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Gradient

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A color gradient represented as an array of color stops, each having a parametric location value.

```swift
@frozen struct Gradient
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [ScaleRange](/documentation/Charts/ScaleRange)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [ShapeStyle](/documentation/swiftui/shapestyle)

## Creating a gradient from colors

- [init(colors:)](/documentation/swiftui/gradient/init(colors:)) Creates a gradient from an array of colors.

## Creating a gradient from stops

- [init(stops:)](/documentation/swiftui/gradient/init(stops:)) Creates a gradient from an array of color stops.
- [stops](/documentation/swiftui/gradient/stops) The array of color stops.
- [Gradient.Stop](/documentation/swiftui/gradient/stop) One color stop in the gradient.

## Working with color spaces

- [colorSpace(_:)](/documentation/swiftui/gradient/colorspace(_:)) Returns a version of the gradient that will use a specified color space for interpolating between its colors.
- [Gradient.ColorSpace](/documentation/swiftui/gradient/colorspace) A method of interpolating between the colors in a gradient.

## Styling content

- [border(_:width:)](/documentation/swiftui/view/border(_:width:))
- [foregroundStyle(_:)](/documentation/swiftui/view/foregroundstyle(_:))
- [foregroundStyle(_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:))
- [foregroundStyle(_:_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:_:))
- [backgroundStyle(_:)](/documentation/swiftui/view/backgroundstyle(_:))
- [backgroundStyle](/documentation/swiftui/environmentvalues/backgroundstyle)
- [ShapeStyle](/documentation/swiftui/shapestyle)
- [AnyShapeStyle](/documentation/swiftui/anyshapestyle)
- [MeshGradient](/documentation/swiftui/meshgradient)
- [AnyGradient](/documentation/swiftui/anygradient)
- [ShadowStyle](/documentation/swiftui/shadowstyle)
- [Glass](/documentation/swiftui/glass)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
