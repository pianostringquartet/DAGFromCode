---
title: LinearGradient
description: A linear gradient.
source: https://developer.apple.com/documentation/swiftui/lineargradient
timestamp: 2025-10-29T00:14:26.238Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# LinearGradient

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A linear gradient.

```swift
@frozen struct LinearGradient
```

## Overview

The gradient applies the color function along an axis, as defined by its start and end points. The gradient maps the unit space points into the bounding rectangle of each shape filled with the gradient.

When using a linear gradient as a shape style, you can also use [linearGradient(_:startPoint:endPoint:)](/documentation/swiftui/shapestyle/lineargradient(_:startpoint:endpoint:)).

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [ShapeStyle](/documentation/swiftui/shapestyle)
- [View](/documentation/swiftui/view)

## Creating a linear gradient

- [init(gradient:startPoint:endPoint:)](/documentation/swiftui/lineargradient/init(gradient:startpoint:endpoint:)) Creates a linear gradient from a base gradient.
- [init(colors:startPoint:endPoint:)](/documentation/swiftui/lineargradient/init(colors:startpoint:endpoint:)) Creates a linear gradient from a collection of colors.
- [init(stops:startPoint:endPoint:)](/documentation/swiftui/lineargradient/init(stops:startpoint:endpoint:)) Creates a linear gradient from a collection of color stops.

## Supporting types

- [AngularGradient](/documentation/swiftui/angulargradient)
- [EllipticalGradient](/documentation/swiftui/ellipticalgradient)
- [RadialGradient](/documentation/swiftui/radialgradient)
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
