---
title: velocity(value:time:context:)
description: Calculates the current velocity of the animation.
source: https://developer.apple.com/documentation/swiftui/animation/velocity(value:time:context:)
timestamp: 2025-10-29T00:13:01.322Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Instance Method**

# velocity(value:time:context:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Calculates the current velocity of the animation.

```swift
func velocity<V>(value: V, time: TimeInterval, context: AnimationContext<V>) -> V? where V : VectorArithmetic
```

## Return Value

The current velocity of the animation, or `nil` if the velocity isn’t available.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
