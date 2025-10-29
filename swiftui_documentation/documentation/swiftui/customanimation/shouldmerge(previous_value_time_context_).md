---
title: shouldMerge(previous:value:time:context:)
description: Determines whether an instance of the animation can merge with other instance of the same type.
source: https://developer.apple.com/documentation/swiftui/customanimation/shouldmerge(previous:value:time:context:)
timestamp: 2025-10-29T00:09:20.180Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customanimation](/documentation/swiftui/customanimation)

**Instance Method**

# shouldMerge(previous:value:time:context:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Determines whether an instance of the animation can merge with other instance of the same type.

```swift
nonisolated func shouldMerge<V>(previous: Animation, value: V, time: TimeInterval, context: inout AnimationContext<V>) -> Bool where V : VectorArithmetic
```

## Parameters

**previous**

The previous running animation.



**value**

The vector to animate towards.



**time**

The amount of time since the start of the previous animation.



**context**

An instance of [Animation Context](/documentation/swiftui/animationcontext) that provides access to state and the animation environment.



## Return Value

A Boolean value of `true` if the animation should merge with the previous animation; otherwise, `false`.

## Discussion

When a view creates a new animation on an animatable value that already has a running animation of the same animation type, the system calls the `shouldMerge(previous:value:time:context:)` method on the new instance to determine whether it can merge the two instance. Implement this method if the animation can merge with another instance. The default implementation returns `false`.

If `shouldMerge(previous:value:time:context:)` returns `true`, the system merges the new animation instance with the previous animation. The system provides to the new instance the state and elapsed time from the previous one. Then it removes the previous animation.

If this method returns `false`, the system doesn’t merge the animation with the previous one. Instead, both animations run together and the system combines their results.

If your custom animation needs to maintain state between calls to the `shouldMerge(previous:value:time:context:)` method, store the state data in `context`. This makes the data available to the method next time the system calls it. To learn more, see [Animation Context](/documentation/swiftui/animationcontext).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
