---
title: init(colors:center:startRadiusFraction:endRadiusFraction:)
description: Creates an elliptical gradient from a collection of colors.
source: https://developer.apple.com/documentation/swiftui/ellipticalgradient/init(colors:center:startradiusfraction:endradiusfraction:)
timestamp: 2025-10-29T00:15:32.110Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [ellipticalgradient](/documentation/swiftui/ellipticalgradient)

**Initializer**

# init(colors:center:startRadiusFraction:endRadiusFraction:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates an elliptical gradient from a collection of colors.

```swift
init(colors: [Color], center: UnitPoint = .center, startRadiusFraction: CGFloat = 0, endRadiusFraction: CGFloat = 0.5)
```

## Discussion

For example, an elliptical gradient centered on the top-leading corner of the view:

```swift
EllipticalGradient(
    colors: [.blue, .green],
    center: .topLeading,
    startRadiusFraction: 0,
    endRadiusFraction: 1)
```

- colors: The colors, evenly distributed throughout the gradient.
- center: The center of the circle, in [0, 1] coordinates.
- startRadiusFraction: The start radius value, as a fraction between zero and one. Zero maps to the center point, one maps to the diameter of the unit circle.
- endRadiusFraction: The end radius value, as a fraction between zero and one. Zero maps to the center point, one maps to the diameter of the unit circle.

## Creating an elliptical gradient

- [init(gradient:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/ellipticalgradient/init(gradient:center:startradiusfraction:endradiusfraction:))
- [init(stops:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/ellipticalgradient/init(stops:center:startradiusfraction:endradiusfraction:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
