---
title: angularGradient(_:center:startAngle:endAngle:)
description: An angular gradient, which applies the color function as the angle changes between the start and end angles, and anchored to a relative center point within the filled shape.
source: https://developer.apple.com/documentation/swiftui/shapestyle/angulargradient(_:center:startangle:endangle:)
timestamp: 2025-10-29T00:13:51.735Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Method**

# angularGradient(_:center:startAngle:endAngle:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> An angular gradient, which applies the color function as the angle changes between the start and end angles, and anchored to a relative center point within the filled shape.

```swift
static func angularGradient(_ gradient: AnyGradient, center: UnitPoint = .center, startAngle: Angle, endAngle: Angle) -> some ShapeStyle
```

## Parameters

**gradient**

The gradient to use for filling the shape, providing the colors and their relative stop locations.



**center**

The relative center of the gradient, mapped from the unit space into the bounding rectangle of the filled shape.



**startAngle**

The angle that marks the beginning of the gradient.



**endAngle**

The angle that marks the end of the gradient.



## Discussion

An angular gradient is also known as a “conic” gradient. If `endAngle - startAngle > 2π`, the gradient only draws the last complete turn. If `endAngle - startAngle < 2π`, the gradient fills the missing area with the colors defined by gradient stop locations at `0` and `1`, transitioning between the two halfway across the missing area.

For example, an angular gradient used as a background:

```swift
ContentView()
    .background(.angularGradient(.red.gradient))
```

For information about how to use shape styles, see [Shape Style](/documentation/swiftui/shapestyle).

## Angular gradients

- [angularGradient(colors:center:startAngle:endAngle:)](/documentation/swiftui/shapestyle/angulargradient(colors:center:startangle:endangle:))
- [angularGradient(stops:center:startAngle:endAngle:)](/documentation/swiftui/shapestyle/angulargradient(stops:center:startangle:endangle:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
