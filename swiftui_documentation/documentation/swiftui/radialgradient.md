---
title: RadialGradient
description: A radial gradient.
source: https://developer.apple.com/documentation/swiftui/radialgradient
timestamp: 2025-10-29T00:13:35.020Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# RadialGradient

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A radial gradient.

```swift
@frozen struct RadialGradient
```

## Overview

The gradient applies the color function as the distance from a center point, scaled to fit within the defined start and end radii. The gradient maps the unit space center point into the bounding rectangle of each shape filled with the gradient.

When using a radial gradient as a shape style, you can also use [radialGradient(_:center:startRadius:endRadius:)](/documentation/swiftui/shapestyle/radialgradient(_:center:startradius:endradius:)).

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [ShapeStyle](/documentation/swiftui/shapestyle)
- [View](/documentation/swiftui/view)

## Creating a radial gradient

- [init(gradient:center:startRadius:endRadius:)](/documentation/swiftui/radialgradient/init(gradient:center:startradius:endradius:)) Creates a radial gradient from a base gradient.
- [init(colors:center:startRadius:endRadius:)](/documentation/swiftui/radialgradient/init(colors:center:startradius:endradius:)) Creates a radial gradient from a collection of colors.
- [init(stops:center:startRadius:endRadius:)](/documentation/swiftui/radialgradient/init(stops:center:startradius:endradius:)) Creates a radial gradient from a collection of color stops.

## Supporting types

- [AngularGradient](/documentation/swiftui/angulargradient)
- [EllipticalGradient](/documentation/swiftui/ellipticalgradient)
- [LinearGradient](/documentation/swiftui/lineargradient)
- [Material](/documentation/swiftui/material)
- [ImagePaint](/documentation/swiftui/imagepaint)
- [HierarchicalShapeStyle](/documentation/swiftui/hierarchicalshapestyle)
- [HierarchicalShapeStyleModifier](/documentation/swiftui/hierarchicalshapestylemodifier)
- [ForegroundStyle](/documentation/swiftui/foregroundstyle)
- [BackgroundStyle](/documentation/swiftui/backgroundstyle)
- [SelectionShapeStyle](/documentation/swiftui/selectionshapestyle)
- [SeparatorShapeStyle](/documentation/swiftui/separatorshapestyle)
- [TintShapeStyle](/documentation/swiftui/tintshapestyle)
- [FillShapeStyle](/documentation/swiftui/fillshapestyle)
- [LinkShapeStyle](/documentation/swiftui/linkshapestyle)
- [PlaceholderTextShapeStyle](/documentation/swiftui/placeholdertextshapestyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
