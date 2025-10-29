---
title: EllipticalGradient
description: A radial gradient that draws an ellipse.
source: https://developer.apple.com/documentation/swiftui/ellipticalgradient
timestamp: 2025-10-29T00:10:44.413Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# EllipticalGradient

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A radial gradient that draws an ellipse.

```swift
@frozen struct EllipticalGradient
```

## Overview

The gradient maps its coordinate space to the unit space square in which its center and radii are defined, then stretches that square to fill its bounding rect, possibly also stretching the circular gradient to have elliptical contours.

For example, an elliptical gradient centered on the view, filling its bounds:

```swift
EllipticalGradient(gradient: .init(colors: [.red, .yellow]))
```

When using an elliptical gradient as a shape style, you can also use [ellipticalGradient(_:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/shapestyle/ellipticalgradient(_:center:startradiusfraction:endradiusfraction:)).

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [ShapeStyle](/documentation/swiftui/shapestyle)
- [View](/documentation/swiftui/view)

## Creating an elliptical gradient

- [init(gradient:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/ellipticalgradient/init(gradient:center:startradiusfraction:endradiusfraction:)) Creates an elliptical gradient.
- [init(colors:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/ellipticalgradient/init(colors:center:startradiusfraction:endradiusfraction:)) Creates an elliptical gradient from a collection of colors.
- [init(stops:center:startRadiusFraction:endRadiusFraction:)](/documentation/swiftui/ellipticalgradient/init(stops:center:startradiusfraction:endradiusfraction:)) Creates an elliptical gradient from a collection of color stops.

## Supporting types

- [AngularGradient](/documentation/swiftui/angulargradient)
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
