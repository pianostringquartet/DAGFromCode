---
title: radialGradient(stops:center:startRadius:endRadius:)
description: A radial gradient defined by a collection of color stops.
source: https://developer.apple.com/documentation/swiftui/shapestyle/radialgradient(stops:center:startradius:endradius:)
timestamp: 2025-10-29T00:15:29.487Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Method**

# radialGradient(stops:center:startRadius:endRadius:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A radial gradient defined by a collection of color stops.

```swift
static func radialGradient(stops: [Gradient.Stop], center: UnitPoint, startRadius: CGFloat, endRadius: CGFloat) -> RadialGradient
```

## Discussion

The gradient applies the color function as the distance from a center point, scaled to fit within the defined start and end radii. The gradient maps the unit space center point into the bounding rectangle of each shape filled with the gradient.

For information about how to use shape styles, see [Shape Style](/documentation/swiftui/shapestyle).

## Radial gradients

- [radialGradient(_:center:startRadius:endRadius:)](/documentation/swiftui/shapestyle/radialgradient(_:center:startradius:endradius:))
- [radialGradient(colors:center:startRadius:endRadius:)](/documentation/swiftui/shapestyle/radialgradient(colors:center:startradius:endradius:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
