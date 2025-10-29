---
title: AngularGradient
description: An angular gradient.
source: https://developer.apple.com/documentation/swiftui/angulargradient
timestamp: 2025-10-29T00:11:05.828Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AngularGradient

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An angular gradient.

```swift
@frozen struct AngularGradient
```

## Overview

An angular gradient is also known as a “conic” gradient. This gradient applies the color function as the angle changes, relative to a center point and defined start and end angles. If `endAngle - startAngle > 2π`, the gradient only draws the last complete turn. If `endAngle - startAngle < 2π`, the gradient fills the missing area with the colors defined by gradient locations one and zero, transitioning between the two halfway across the missing area. The gradient maps the unit space center point into the bounding rectangle of each shape filled with the gradient.

When using an angular gradient as a shape style, you can also use [angularGradient(_:center:startAngle:endAngle:)](/documentation/swiftui/shapestyle/angulargradient(_:center:startangle:endangle:)), [conicGradient(_:center:angle:)](/documentation/swiftui/shapestyle/conicgradient(_:center:angle:)), or similar methods.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [ShapeStyle](/documentation/swiftui/shapestyle)
- [View](/documentation/swiftui/view)

## Creating a full rotation angular gradient

- [init(gradient:center:angle:)](/documentation/swiftui/angulargradient/init(gradient:center:angle:)) Creates a conic gradient that completes a full turn.
- [init(colors:center:angle:)](/documentation/swiftui/angulargradient/init(colors:center:angle:)) Creates a conic gradient from a collection of colors that completes a full turn.
- [init(stops:center:angle:)](/documentation/swiftui/angulargradient/init(stops:center:angle:)) Creates a conic gradient from a collection of color stops that completes a full turn.

## Creating a partial rotation angular gradient

- [init(gradient:center:startAngle:endAngle:)](/documentation/swiftui/angulargradient/init(gradient:center:startangle:endangle:)) Creates an angular gradient.
- [init(colors:center:startAngle:endAngle:)](/documentation/swiftui/angulargradient/init(colors:center:startangle:endangle:)) Creates an angular gradient from a collection of colors.
- [init(stops:center:startAngle:endAngle:)](/documentation/swiftui/angulargradient/init(stops:center:startangle:endangle:)) Creates an angular gradient from a collection of color stops.

## Supporting types

- [EllipticalGradient](/documentation/swiftui/ellipticalgradient)
- [LinearGradient](/documentation/swiftui/lineargradient)
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
