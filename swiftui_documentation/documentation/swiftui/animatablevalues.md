---
title: AnimatableValues
source: https://developer.apple.com/documentation/swiftui/animatablevalues
timestamp: 2025-10-29T00:14:49.738Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AnimatableValues

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

```swift
@frozen struct AnimatableValues<each Value> where repeat each Value : VectorArithmetic
```

## Conforms To

- [AdditiveArithmetic](/documentation/Swift/AdditiveArithmetic)
- [Equatable](/documentation/Swift/Equatable)
- [VectorArithmetic](/documentation/swiftui/vectorarithmetic)

## Initializers

- [init(_:)](/documentation/swiftui/animatablevalues/init(_:)) Creates a tuple of animatable values.

## Instance Properties

- [magnitudeSquared](/documentation/swiftui/animatablevalues/magnitudesquared) The dot-product of the tuple of animatable values with itself.
- [value](/documentation/swiftui/animatablevalues/value) The tuple of values.

## Making data animatable

- [Animatable](/documentation/swiftui/animatable)
- [AnimatablePair](/documentation/swiftui/animatablepair)
- [VectorArithmetic](/documentation/swiftui/vectorarithmetic)
- [EmptyAnimatableData](/documentation/swiftui/emptyanimatabledata)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
