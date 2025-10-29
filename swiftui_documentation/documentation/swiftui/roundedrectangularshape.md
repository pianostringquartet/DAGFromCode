---
title: RoundedRectangularShape
description: A protocol of  that describes a rounded rectangular shape.
source: https://developer.apple.com/documentation/swiftui/roundedrectangularshape
timestamp: 2025-10-29T00:11:01.589Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# RoundedRectangularShape

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A protocol of  that describes a rounded rectangular shape.

```swift
protocol RoundedRectangularShape : InsettableShape
```

## Overview

Conform your [Insettable Shape](/documentation/swiftui/insettableshape) type to [Rounded Rectangular Shape](/documentation/swiftui/roundedrectangularshape) when your shape is a rounded rectangular with four corners and you want to expose information about the corners. For example, a custom triangle [Shape](/documentation/swiftui/shape) is not fit for such conformance, while a custom rectangle [Shape](/documentation/swiftui/shape) could benefit from providing the implementation, especially when the shape is used as a container shape in [containerShape(_:)](/documentation/swiftui/view/containershape(_:)-3br47) to achieve concentricity.

System shapes like [Rectangle](/documentation/swiftui/rectangle), [Rounded Rectangle](/documentation/swiftui/roundedrectangle), [Uneven Rounded Rectangle](/documentation/swiftui/unevenroundedrectangle), [Capsule](/documentation/swiftui/capsule), and [Circle](/documentation/swiftui/circle) already provide default implementation for this protocol.

## Inherits From

- [Animatable](/documentation/swiftui/animatable)
- [InsettableShape](/documentation/swiftui/insettableshape)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [Shape](/documentation/swiftui/shape)
- [View](/documentation/swiftui/view)

## Conforming Types

- [Capsule](/documentation/swiftui/capsule)
- [Circle](/documentation/swiftui/circle)
- [Rectangle](/documentation/swiftui/rectangle)
- [RoundedRectangle](/documentation/swiftui/roundedrectangle)
- [UnevenRoundedRectangle](/documentation/swiftui/unevenroundedrectangle)

## Instance Methods

- [corners(in:)](/documentation/swiftui/roundedrectangularshape/corners(in:)) Resolved corners given a size. If the corner style of a shape is size-dependent, read the provided size and return values accordingly. This function could be called with a nil size when the size hasn’t been determined. In that case, return the best approximated value. For example, for a capsule shape, its corner radius is determined by the size. If size is not available, return  to indicate that the corner should be as round as it could be.

## Type Aliases

- [RoundedRectangularShape.Corners](/documentation/swiftui/roundedrectangularshape/corners)

## Creating rectangular shapes

- [Rectangle](/documentation/swiftui/rectangle)
- [RoundedRectangle](/documentation/swiftui/roundedrectangle)
- [RoundedCornerStyle](/documentation/swiftui/roundedcornerstyle)
- [RoundedRectangularShapeCorners](/documentation/swiftui/roundedrectangularshapecorners)
- [UnevenRoundedRectangle](/documentation/swiftui/unevenroundedrectangle)
- [RectangleCornerRadii](/documentation/swiftui/rectanglecornerradii)
- [RectangleCornerInsets](/documentation/swiftui/rectanglecornerinsets)
- [ConcentricRectangle](/documentation/swiftui/concentricrectangle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
