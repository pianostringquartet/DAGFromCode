---
title: ScaledShape
description: A shape with a scale transform applied to it.
source: https://developer.apple.com/documentation/swiftui/scaledshape
timestamp: 2025-10-29T00:09:12.140Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ScaledShape

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A shape with a scale transform applied to it.

```swift
@frozen struct ScaledShape<Content> where Content : Shape
```

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [Shape](/documentation/swiftui/shape)
- [View](/documentation/swiftui/view)

## Creating a scaled shape

- [init(shape:scale:anchor:)](/documentation/swiftui/scaledshape/init(shape:scale:anchor:))

## Getting the shape’s characteristics

- [anchor](/documentation/swiftui/scaledshape/anchor)
- [scale](/documentation/swiftui/scaledshape/scale)
- [shape](/documentation/swiftui/scaledshape/shape)

## Supporting types

- [animatableData](/documentation/swiftui/scaledshape/animatabledata) The data to animate.

## Transforming a shape

- [RotatedShape](/documentation/swiftui/rotatedshape)
- [OffsetShape](/documentation/swiftui/offsetshape)
- [TransformedShape](/documentation/swiftui/transformedshape)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
