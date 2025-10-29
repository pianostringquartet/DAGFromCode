---
title: velocity(value:time:context:)
description: Calculates the velocity of the animation at a specified time.
source: https://developer.apple.com/documentation/swiftui/customanimation/velocity(value:time:context:)
timestamp: 2025-10-29T00:11:57.346Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customanimation](/documentation/swiftui/customanimation)

**Instance Method**

# velocity(value:time:context:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Calculates the velocity of the animation at a specified time.

```swift
nonisolated func velocity<V>(value: V, time: TimeInterval, context: AnimationContext<V>) -> V? where V : VectorArithmetic
```

## Parameters

**value**

The vector to animate towards.



**time**

The amount of time since the start of the animation.



**context**

An instance of [Animation Context](/documentation/swiftui/animationcontext) that provides access to state and the animation environment.



## Return Value

The current velocity of the animation, or `nil` if the animation has finished.

## Discussion

Implement this method to provide the velocity of the animation at a given time. Should subsequent animations merge with the animation, the system preserves continuity of the velocity between animations.

The default implementation of this method returns `nil`.

> [!NOTE]
> State and environment data is available to this method via the `context` parameter, but `context` is read-only. This behavior is different than with [animate(value:time:context:)](/documentation/swiftui/customanimation/animate(value:time:context:)) and [shouldMerge(previous:value:time:context:)](/documentation/swiftui/customanimation/shouldmerge(previous:value:time:context:)) where `context` is an `inout` parameter, letting you change the context including state data of the animation. For more information about managing state data in a custom animation, see [Animation Context](/documentation/swiftui/animationcontext).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
