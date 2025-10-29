---
title: OffsetShape
description: A shape with a translation offset transform applied to it.
source: https://developer.apple.com/documentation/swiftui/offsetshape
timestamp: 2025-10-29T00:10:52.386Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# OffsetShape

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A shape with a translation offset transform applied to it.

```swift
@frozen struct OffsetShape<Content> where Content : Shape
```

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [Copyable](/documentation/Swift/Copyable)
- [InsettableShape](/documentation/swiftui/insettableshape)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [Shape](/documentation/swiftui/shape)
- [View](/documentation/swiftui/view)

## Creating an offset shape

- [init(shape:offset:)](/documentation/swiftui/offsetshape/init(shape:offset:))

## Getting the shape’s characteristics

- [offset](/documentation/swiftui/offsetshape/offset)
- [shape](/documentation/swiftui/offsetshape/shape)

## Supporting types

- [animatableData](/documentation/swiftui/offsetshape/animatabledata) The data to animate.

## Transforming a shape

- [ScaledShape](/documentation/swiftui/scaledshape)
- [RotatedShape](/documentation/swiftui/rotatedshape)
- [TransformedShape](/documentation/swiftui/transformedshape)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
