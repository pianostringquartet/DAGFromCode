---
title: linearGradient(stops:startPoint:endPoint:)
description: A linear gradient defined by a collection of color stops.
source: https://developer.apple.com/documentation/swiftui/shapestyle/lineargradient(stops:startpoint:endpoint:)
timestamp: 2025-10-29T00:15:34.266Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Method**

# linearGradient(stops:startPoint:endPoint:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A linear gradient defined by a collection of color stops.

```swift
static func linearGradient(stops: [Gradient.Stop], startPoint: UnitPoint, endPoint: UnitPoint) -> LinearGradient
```

## Discussion

The gradient applies the color function along an axis, as defined by its start and end points. The gradient maps the unit space points into the bounding rectangle of each shape filled with the gradient.

For information about how to use shape styles, see [Shape Style](/documentation/swiftui/shapestyle).

## Linear gradients

- [linearGradient(_:startPoint:endPoint:)](/documentation/swiftui/shapestyle/lineargradient(_:startpoint:endpoint:))
- [linearGradient(colors:startPoint:endPoint:)](/documentation/swiftui/shapestyle/lineargradient(colors:startpoint:endpoint:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
