---
title: animate(value:time:context:)
description: Calculates the value of the animation at the specified time.
source: https://developer.apple.com/documentation/swiftui/customanimation/animate(value:time:context:)
timestamp: 2025-10-29T00:15:06.296Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customanimation](/documentation/swiftui/customanimation)

**Instance Method**

# animate(value:time:context:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Calculates the value of the animation at the specified time.

```swift
nonisolated func animate<V>(value: V, time: TimeInterval, context: inout AnimationContext<V>) -> V? where V : VectorArithmetic
```

## Parameters

**value**

The vector to animate towards.



**time**

The elapsed time since the start of the animation.



**context**

An instance of [Animation Context](/documentation/swiftui/animationcontext) that provides access to state and the animation environment.



## Return Value

The current value of the animation, or `nil` if the animation has finished.

## Discussion

Implement this method to calculate and return the value of the animation at a given point in time. If the animation has finished, return `nil` as the value. This signals to the system that it can remove the animation.

If your custom animation needs to maintain state between calls to the `animate(value:time:context:)` method, store the state data in `context`. This makes the data available to the method next time the system calls it. To learn more about managing state data in a custom animation, see [Animation Context](/documentation/swiftui/animationcontext).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
