---
title: InsettableShape
description: A shape type that is able to inset itself to produce another shape.
source: https://developer.apple.com/documentation/swiftui/insettableshape
timestamp: 2025-10-29T00:15:08.564Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# InsettableShape

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A shape type that is able to inset itself to produce another shape.

```swift
protocol InsettableShape : Shape
```

## Inherits From

- [Animatable](/documentation/swiftui/animatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [Shape](/documentation/swiftui/shape)
- [View](/documentation/swiftui/view)

## Inherited By

- [RoundedRectangularShape](/documentation/swiftui/roundedrectangularshape)

## Conforming Types

- [ButtonBorderShape](/documentation/swiftui/buttonbordershape)
- [Capsule](/documentation/swiftui/capsule)
- [Circle](/documentation/swiftui/circle)
- [ContainerRelativeShape](/documentation/swiftui/containerrelativeshape)
- [Ellipse](/documentation/swiftui/ellipse)
- [OffsetShape](/documentation/swiftui/offsetshape)
- [Rectangle](/documentation/swiftui/rectangle)
- [RotatedShape](/documentation/swiftui/rotatedshape)
- [RoundedRectangle](/documentation/swiftui/roundedrectangle)
- [UnevenRoundedRectangle](/documentation/swiftui/unevenroundedrectangle)

## Setting the stroke border characteristics

- [strokeBorder(_:lineWidth:antialiased:)](/documentation/swiftui/insettableshape/strokeborder(_:linewidth:antialiased:)) Returns a view that is the result of filling the -sized border (aka inner stroke) of  with . This is equivalent to insetting  by  and stroking the resulting shape with  as the line-width.
- [strokeBorder(lineWidth:antialiased:)](/documentation/swiftui/insettableshape/strokeborder(linewidth:antialiased:)) Returns a view that is the result of filling the -sized border (aka inner stroke) of  with the foreground color. This is equivalent to insetting  by  and stroking the resulting shape with  as the line-width.
- [strokeBorder(_:style:antialiased:)](/documentation/swiftui/insettableshape/strokeborder(_:style:antialiased:)) Returns a view that is the result of insetting  by , stroking the resulting shape with , and then filling with .
- [strokeBorder(style:antialiased:)](/documentation/swiftui/insettableshape/strokeborder(style:antialiased:)) Returns a view that is the result of insetting  by , stroking the resulting shape with , and then filling with the foreground color.

## Setting the inset

- [inset(by:)](/documentation/swiftui/insettableshape/inset(by:)) Returns  inset by .
- [InsetShape](/documentation/swiftui/insettableshape/insetshape) The type of the inset shape.

## Setting a container shape

- [containerShape(_:)](/documentation/swiftui/view/containershape(_:))
- [ContainerRelativeShape](/documentation/swiftui/containerrelativeshape)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
