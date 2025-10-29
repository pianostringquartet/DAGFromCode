---
title: init(stops:center:startRadiusFraction:endRadiusFraction:)
description: Creates an elliptical gradient from a collection of color stops.
source: https://developer.apple.com/documentation/swiftui/ellipticalgradient/init(stops:center:startradiusfraction:endradiusfraction:)
timestamp: 2025-10-29T00:15:32.025Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [ellipticalgradient](/documentation/swiftui/ellipticalgradient)

**Initializer**

# init(stops:center:startRadiusFraction:endRadiusFraction:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates an elliptical gradient from a collection of color stops.

```swift
init(stops: [Gradient.Stop], center: UnitPoint = .center, startRadiusFraction: CGFloat = 0, endRadiusFraction: CGFloat = 0.5)
```

## Discussion

For example, an elliptical gradient centered on the top-leading corner of the view, with some extra green area:

```swift
EllipticalGradient(
    stops: [
        .init(color: .blue, location: 0.0),
        .init(color: .green, location: 0.9),
        .init(color: .green, location: 1.0),
    ],
    center: .topLeading,
    startRadiusFraction: 0,
    endRadiusFraction: 1)
```

- stops: The colors and their parametric locations.
- center: The center of the circle, in [0, 1] coordinates.
- startRadiusFraction: The start radius value, as a fraction between zero and one. Zero maps to the center point, one maps to the diameter of the unit circle.
- endRadiusFraction: The end radius value, as a fraction between zero and one. Zero maps to the center point, one maps to the diameter of the unit circle.

## Creating an elliptical gradient

- [init(gradient:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/ellipticalgradient/init(gradient:center:startradiusfraction:endradiusfraction:))
- [init(colors:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/ellipticalgradient/init(colors:center:startradiusfraction:endradiusfraction:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
