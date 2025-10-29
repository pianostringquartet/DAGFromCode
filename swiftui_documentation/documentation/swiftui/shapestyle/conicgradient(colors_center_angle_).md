---
title: conicGradient(colors:center:angle:)
description: A conic gradient defined by a collection of colors that completes a full turn.
source: https://developer.apple.com/documentation/swiftui/shapestyle/conicgradient(colors:center:angle:)
timestamp: 2025-10-29T00:15:34.486Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Method**

# conicGradient(colors:center:angle:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A conic gradient defined by a collection of colors that completes a full turn.

```swift
static func conicGradient(colors: [Color], center: UnitPoint, angle: Angle = .zero) -> AngularGradient
```

## Parameters

**colors**

The colors of the gradient, evenly spaced along its full length.



**center**

The relative center of the gradient, mapped from the unit space into the bounding rectangle of the filled shape.



**angle**

The angle to offset the beginning of the gradient’s full turn.



## Discussion

For more information on how to use conic gradients, see [conicGradient(_:center:angle:)](/documentation/swiftui/shapestyle/conicgradient(_:center:angle:)).

## Conic gradients

- [conicGradient(_:center:angle:)](/documentation/swiftui/shapestyle/conicgradient(_:center:angle:))
- [conicGradient(stops:center:angle:)](/documentation/swiftui/shapestyle/conicgradient(stops:center:angle:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
