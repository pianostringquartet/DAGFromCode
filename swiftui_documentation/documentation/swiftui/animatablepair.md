---
title: AnimatablePair
description: A pair of animatable values, which is itself animatable.
source: https://developer.apple.com/documentation/swiftui/animatablepair
timestamp: 2025-10-29T00:15:12.564Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AnimatablePair

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A pair of animatable values, which is itself animatable.

```swift
@frozen struct AnimatablePair<First, Second> where First : VectorArithmetic, Second : VectorArithmetic
```

## Conforms To

- [AdditiveArithmetic](/documentation/Swift/AdditiveArithmetic)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [VectorArithmetic](/documentation/swiftui/vectorarithmetic)

## Creating an animatable pair

- [init(_:_:)](/documentation/swiftui/animatablepair/init(_:_:)) Creates an animated pair with the provided values.

## Getting the constituent animations

- [first](/documentation/swiftui/animatablepair/first) The first value.
- [second](/documentation/swiftui/animatablepair/second) The second value.

## Manipulating values

- [magnitudeSquared](/documentation/swiftui/animatablepair/magnitudesquared) The dot-product of this animated pair with itself.

## Making data animatable

- [Animatable](/documentation/swiftui/animatable)
- [AnimatableValues](/documentation/swiftui/animatablevalues)
- [VectorArithmetic](/documentation/swiftui/vectorarithmetic)
- [EmptyAnimatableData](/documentation/swiftui/emptyanimatabledata)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
