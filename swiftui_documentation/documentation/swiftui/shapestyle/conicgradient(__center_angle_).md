---
title: conicGradient(_:center:angle:)
description: A conic gradient that completes a full turn, optionally starting from a given angle and anchored to a relative center point within the filled shape.
source: https://developer.apple.com/documentation/swiftui/shapestyle/conicgradient(_:center:angle:)
timestamp: 2025-10-29T00:12:58.316Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Method**

# conicGradient(_:center:angle:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A conic gradient that completes a full turn, optionally starting from a given angle and anchored to a relative center point within the filled shape.

```swift
static func conicGradient(_ gradient: AnyGradient, center: UnitPoint = .center, angle: Angle = .zero) -> some ShapeStyle
```

## Parameters

**gradient**

The gradient to use for filling the shape, providing the colors and their relative stop locations.



**center**

The relative center of the gradient, mapped from the unit space into the bounding rectangle of the filled shape.



**angle**

The angle to offset the beginning of the gradient’s full turn.



## Discussion

For example, a conic gradient used as a background:

```swift
let gradient = Gradient(colors: [.red, .yellow])

ContentView()
    .background(.conicGradient(gradient))
```

For information about how to use shape styles, see [Shape Style](/documentation/swiftui/shapestyle).

## Conic gradients

- [conicGradient(colors:center:angle:)](/documentation/swiftui/shapestyle/conicgradient(colors:center:angle:))
- [conicGradient(stops:center:angle:)](/documentation/swiftui/shapestyle/conicgradient(stops:center:angle:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
