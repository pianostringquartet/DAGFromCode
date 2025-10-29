---
title: linearGradient(_:startPoint:endPoint:)
description: A linear gradient.
source: https://developer.apple.com/documentation/swiftui/shapestyle/lineargradient(_:startpoint:endpoint:)
timestamp: 2025-10-29T00:12:52.754Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Method**

# linearGradient(_:startPoint:endPoint:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A linear gradient.

```swift
static func linearGradient(_ gradient: AnyGradient, startPoint: UnitPoint, endPoint: UnitPoint) -> some ShapeStyle
```

## Discussion

The gradient applies the color function along an axis, as defined by its start and end points. The gradient maps the unit space points into the bounding rectangle of each shape filled with the gradient.

For example, a linear gradient used as a background:

```swift
ContentView()
    .background(.linearGradient(.red.gradient,
        startPoint: .top, endPoint: .bottom))
```

For information about how to use shape styles, see [Shape Style](/documentation/swiftui/shapestyle).

## Linear gradients

- [linearGradient(colors:startPoint:endPoint:)](/documentation/swiftui/shapestyle/lineargradient(colors:startpoint:endpoint:))
- [linearGradient(stops:startPoint:endPoint:)](/documentation/swiftui/shapestyle/lineargradient(stops:startpoint:endpoint:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
