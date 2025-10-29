---
title: VectorArithmetic
description: A type that can serve as the animatable data of an animatable type.
source: https://developer.apple.com/documentation/swiftui/vectorarithmetic
timestamp: 2025-10-29T00:10:53.300Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# VectorArithmetic

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A type that can serve as the animatable data of an animatable type.

```swift
protocol VectorArithmetic : AdditiveArithmetic
```

## Overview

`VectorArithmetic` extends the `AdditiveArithmetic` protocol with scalar multiplication and a way to query the vector magnitude of the value. Use this type as the `animatableData` associated type of a type that conforms to the [Animatable](/documentation/swiftui/animatable) protocol.

## Inherits From

- [AdditiveArithmetic](/documentation/Swift/AdditiveArithmetic)
- [Equatable](/documentation/Swift/Equatable)

## Conforming Types

- [AnimatablePair](/documentation/swiftui/animatablepair)
- [AnimatableValues](/documentation/swiftui/animatablevalues)
- [EmptyAnimatableData](/documentation/swiftui/emptyanimatabledata)

## Manipulating values

- [magnitudeSquared](/documentation/swiftui/vectorarithmetic/magnitudesquared) Returns the dot-product of this vector arithmetic instance with itself.
- [scale(by:)](/documentation/swiftui/vectorarithmetic/scale(by:)) Multiplies each component of this value by the given value.
- [scaled(by:)](/documentation/swiftui/vectorarithmetic/scaled(by:)) Returns a value with each component of this value multiplied by the given value.
- [interpolate(towards:amount:)](/documentation/swiftui/vectorarithmetic/interpolate(towards:amount:)) Interpolates this value with  by the specified .
- [interpolated(towards:amount:)](/documentation/swiftui/vectorarithmetic/interpolated(towards:amount:)) Returns this value interpolated with  by the specified .

## Making data animatable

- [Animatable](/documentation/swiftui/animatable)
- [AnimatableValues](/documentation/swiftui/animatablevalues)
- [AnimatablePair](/documentation/swiftui/animatablepair)
- [EmptyAnimatableData](/documentation/swiftui/emptyanimatabledata)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
