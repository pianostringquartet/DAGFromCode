---
title: ellipticalGradient(colors:center:startRadiusFraction:endRadiusFraction:)
description: A radial gradient that draws an ellipse defined by a collection of colors.
source: https://developer.apple.com/documentation/swiftui/shapestyle/ellipticalgradient(colors:center:startradiusfraction:endradiusfraction:)
timestamp: 2025-10-29T00:15:34.445Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Method**

# ellipticalGradient(colors:center:startRadiusFraction:endRadiusFraction:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A radial gradient that draws an ellipse defined by a collection of colors.

```swift
static func ellipticalGradient(colors: [Color], center: UnitPoint = .center, startRadiusFraction: CGFloat = 0, endRadiusFraction: CGFloat = 0.5) -> EllipticalGradient
```

## Discussion

The gradient maps its coordinate space to the unit space square in which its center and radii are defined, then stretches that square to fill its bounding rect, possibly also stretching the circular gradient to have elliptical contours.

For example, an elliptical gradient used as a background:

```swift
.background(.elliptical(colors: [.red, .yellow]))
```

For information about how to use shape styles, see [Shape Style](/documentation/swiftui/shapestyle).

## Elliptical gradients

- [ellipticalGradient(_:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/shapestyle/ellipticalgradient(_:center:startradiusfraction:endradiusfraction:))
- [ellipticalGradient(stops:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/shapestyle/ellipticalgradient(stops:center:startradiusfraction:endradiusfraction:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
