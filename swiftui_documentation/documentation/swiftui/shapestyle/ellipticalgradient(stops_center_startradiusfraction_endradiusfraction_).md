---
title: ellipticalGradient(stops:center:startRadiusFraction:endRadiusFraction:)
description: A radial gradient that draws an ellipse defined by a collection of color stops.
source: https://developer.apple.com/documentation/swiftui/shapestyle/ellipticalgradient(stops:center:startradiusfraction:endradiusfraction:)
timestamp: 2025-10-29T00:15:34.529Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Method**

# ellipticalGradient(stops:center:startRadiusFraction:endRadiusFraction:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A radial gradient that draws an ellipse defined by a collection of color stops.

```swift
static func ellipticalGradient(stops: [Gradient.Stop], center: UnitPoint = .center, startRadiusFraction: CGFloat = 0, endRadiusFraction: CGFloat = 0.5) -> EllipticalGradient
```

## Discussion

The gradient maps its coordinate space to the unit space square in which its center and radii are defined, then stretches that square to fill its bounding rect, possibly also stretching the circular gradient to have elliptical contours.

For example, an elliptical gradient used as a background:

```swift
.background(.ellipticalGradient(stops: [
    .init(color: .red, location: 0.0),
    .init(color: .yellow, location: 0.9),
    .init(color: .yellow, location: 1.0),
]))
```

For information about how to use shape styles, see [Shape Style](/documentation/swiftui/shapestyle).

## Elliptical gradients

- [ellipticalGradient(_:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/shapestyle/ellipticalgradient(_:center:startradiusfraction:endradiusfraction:))
- [ellipticalGradient(colors:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/shapestyle/ellipticalgradient(colors:center:startradiusfraction:endradiusfraction:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
