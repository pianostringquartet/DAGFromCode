---
title: radialGradient(colors:center:startRadius:endRadius:)
description: A radial gradient defined by a collection of colors.
source: https://developer.apple.com/documentation/swiftui/shapestyle/radialgradient(colors:center:startradius:endradius:)
timestamp: 2025-10-29T00:15:29.431Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Method**

# radialGradient(colors:center:startRadius:endRadius:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A radial gradient defined by a collection of colors.

```swift
static func radialGradient(colors: [Color], center: UnitPoint, startRadius: CGFloat, endRadius: CGFloat) -> RadialGradient
```

## Discussion

The gradient applies the color function as the distance from a center point, scaled to fit within the defined start and end radii. The gradient maps the unit space center point into the bounding rectangle of each shape filled with the gradient.

For information about how to use shape styles, see [Shape Style](/documentation/swiftui/shapestyle).

## Radial gradients

- [radialGradient(_:center:startRadius:endRadius:)](/documentation/swiftui/shapestyle/radialgradient(_:center:startradius:endradius:))
- [radialGradient(stops:center:startRadius:endRadius:)](/documentation/swiftui/shapestyle/radialgradient(stops:center:startradius:endradius:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
