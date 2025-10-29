---
title: TransformedShape
description: A shape with an affine transform applied to it.
source: https://developer.apple.com/documentation/swiftui/transformedshape
timestamp: 2025-10-29T00:09:17.068Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TransformedShape

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A shape with an affine transform applied to it.

```swift
@frozen struct TransformedShape<Content> where Content : Shape
```

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [Shape](/documentation/swiftui/shape)
- [View](/documentation/swiftui/view)

## Creating a transformed shape

- [init(shape:transform:)](/documentation/swiftui/transformedshape/init(shape:transform:))

## Getting the shape’s characteristics

- [shape](/documentation/swiftui/transformedshape/shape)
- [transform](/documentation/swiftui/transformedshape/transform)

## Transforming a shape

- [ScaledShape](/documentation/swiftui/scaledshape)
- [RotatedShape](/documentation/swiftui/rotatedshape)
- [OffsetShape](/documentation/swiftui/offsetshape)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
