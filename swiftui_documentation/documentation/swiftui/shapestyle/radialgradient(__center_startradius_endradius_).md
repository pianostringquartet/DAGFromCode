---
title: radialGradient(_:center:startRadius:endRadius:)
description: A radial gradient.
source: https://developer.apple.com/documentation/swiftui/shapestyle/radialgradient(_:center:startradius:endradius:)
timestamp: 2025-10-29T00:09:20.903Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Method**

# radialGradient(_:center:startRadius:endRadius:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A radial gradient.

```swift
static func radialGradient(_ gradient: AnyGradient, center: UnitPoint = .center, startRadius: CGFloat = 0, endRadius: CGFloat) -> some ShapeStyle
```

## Discussion

The gradient applies the color function as the distance from a center point, scaled to fit within the defined start and end radii. The gradient maps the unit space center point into the bounding rectangle of each shape filled with the gradient.

For example, a radial gradient used as a background:

```swift
ContentView()
    .background(.radialGradient(.red.gradient, endRadius: 100))
```

For information about how to use shape styles, see [Shape Style](/documentation/swiftui/shapestyle).

## Radial gradients

- [radialGradient(colors:center:startRadius:endRadius:)](/documentation/swiftui/shapestyle/radialgradient(colors:center:startradius:endradius:))
- [radialGradient(stops:center:startRadius:endRadius:)](/documentation/swiftui/shapestyle/radialgradient(stops:center:startradius:endradius:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
