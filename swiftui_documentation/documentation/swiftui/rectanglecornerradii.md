---
title: RectangleCornerRadii
description: Describes the corner radius values of a rounded rectangle with uneven corners.
source: https://developer.apple.com/documentation/swiftui/rectanglecornerradii
timestamp: 2025-10-29T00:09:51.988Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# RectangleCornerRadii

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Describes the corner radius values of a rounded rectangle with uneven corners.

```swift
@frozen struct RectangleCornerRadii
```

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a set of radii

- [init(topLeading:bottomLeading:bottomTrailing:topTrailing:)](/documentation/swiftui/rectanglecornerradii/init(topleading:bottomleading:bottomtrailing:toptrailing:)) Creates a new set of corner radii for a rounded rectangle with uneven corners.

## Getting values for specific corners

- [topLeading](/documentation/swiftui/rectanglecornerradii/topleading) The radius of the top-leading corner.
- [topTrailing](/documentation/swiftui/rectanglecornerradii/toptrailing) The radius of the top-trailing corner.
- [bottomLeading](/documentation/swiftui/rectanglecornerradii/bottomleading) The radius of the bottom-leading corner.
- [bottomTrailing](/documentation/swiftui/rectanglecornerradii/bottomtrailing) The radius of the bottom-trailing corner.

## Subscripts

- [subscript(_:)](/documentation/swiftui/rectanglecornerradii/subscript(_:)) Returns the corner radius for a certain corner.

## Creating rectangular shapes

- [Rectangle](/documentation/swiftui/rectangle)
- [RoundedRectangle](/documentation/swiftui/roundedrectangle)
- [RoundedCornerStyle](/documentation/swiftui/roundedcornerstyle)
- [RoundedRectangularShape](/documentation/swiftui/roundedrectangularshape)
- [RoundedRectangularShapeCorners](/documentation/swiftui/roundedrectangularshapecorners)
- [UnevenRoundedRectangle](/documentation/swiftui/unevenroundedrectangle)
- [RectangleCornerInsets](/documentation/swiftui/rectanglecornerinsets)
- [ConcentricRectangle](/documentation/swiftui/concentricrectangle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
