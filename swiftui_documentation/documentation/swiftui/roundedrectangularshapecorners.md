---
title: RoundedRectangularShapeCorners
description: A type describing the corner styles of a .
source: https://developer.apple.com/documentation/swiftui/roundedrectangularshapecorners
timestamp: 2025-10-29T00:14:52.627Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# RoundedRectangularShapeCorners

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A type describing the corner styles of a .

```swift
struct RoundedRectangularShapeCorners
```

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Initializers

- [init(all:)](/documentation/swiftui/roundedrectangularshapecorners/init(all:)) Create corner styles with all corner having the same style.
- [init(topLeading:topTrailing:bottomLeading:bottomTrailing:)](/documentation/swiftui/roundedrectangularshapecorners/init(topleading:toptrailing:bottomleading:bottomtrailing:)) Create corner styles with per-corner styles.

## Instance Properties

- [bottomLeading](/documentation/swiftui/roundedrectangularshapecorners/bottomleading) The bottom leading corner style.
- [bottomTrailing](/documentation/swiftui/roundedrectangularshapecorners/bottomtrailing) The bottom trailing corner style
- [topLeading](/documentation/swiftui/roundedrectangularshapecorners/topleading) The top leading corner style.
- [topTrailing](/documentation/swiftui/roundedrectangularshapecorners/toptrailing) The top trailing corner style.

## Subscripts

- [subscript(_:)](/documentation/swiftui/roundedrectangularshapecorners/subscript(_:)) Returns the corner style for a provided corner.

## Type Properties

- [concentric](/documentation/swiftui/roundedrectangularshapecorners/concentric) Corner styles will be concentric with its container, varying the radius as needed in all four corners.

## Type Methods

- [concentric(minimum:)](/documentation/swiftui/roundedrectangularshapecorners/concentric(minimum:)) Corner styles will be concentric with its container, varying the radius as needed in all four corners but never going below zero, or the provided minimum corner style, if provided.
- [fixed(_:)](/documentation/swiftui/roundedrectangularshapecorners/fixed(_:)) Corner styles with fixed radius in all four corners.

## Creating rectangular shapes

- [Rectangle](/documentation/swiftui/rectangle)
- [RoundedRectangle](/documentation/swiftui/roundedrectangle)
- [RoundedCornerStyle](/documentation/swiftui/roundedcornerstyle)
- [RoundedRectangularShape](/documentation/swiftui/roundedrectangularshape)
- [UnevenRoundedRectangle](/documentation/swiftui/unevenroundedrectangle)
- [RectangleCornerRadii](/documentation/swiftui/rectanglecornerradii)
- [RectangleCornerInsets](/documentation/swiftui/rectanglecornerinsets)
- [ConcentricRectangle](/documentation/swiftui/concentricrectangle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
