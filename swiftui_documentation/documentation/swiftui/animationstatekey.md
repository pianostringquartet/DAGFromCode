---
title: AnimationStateKey
description: A key for accessing animation state values.
source: https://developer.apple.com/documentation/swiftui/animationstatekey
timestamp: 2025-10-29T00:09:33.917Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# AnimationStateKey

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A key for accessing animation state values.

```swift
protocol AnimationStateKey
```

## Overview

To access animation state from an [Animation Context](/documentation/swiftui/animationcontext) in a custom animation, create an `AnimationStateKey`. For example, the following code creates an animation state key named `PausableState` and sets the value for the required [default Value](/documentation/swiftui/animationstatekey/defaultvalue) property. The code also defines properties for state values that the custom animation needs when calculating animation values. Keeping the state values in the animation state key makes it more convenient to read and write those values in the implementation of a [Custom Animation](/documentation/swiftui/customanimation).

```swift
private struct PausableState<Value: VectorArithmetic>: AnimationStateKey {
    var paused = false
    var pauseTime: TimeInterval = 0.0

    static var defaultValue: Self { .init() }
}
```

To make accessing the value of the animation state key more convenient, define a property for it by extending [Animation Context](/documentation/swiftui/animationcontext):

```swift
extension AnimationContext {
    fileprivate var pausableState: PausableState<Value> {
        get { state[PausableState<Value>.self] }
        set { state[PausableState<Value>.self] = newValue }
    }
}
```

Then, you can read and write your state in an instance of `CustomAnimation` using the [Animation Context](/documentation/swiftui/animationcontext):

```swift
struct PausableAnimation: CustomAnimation {
    let base: Animation

    func animate<V>(value: V, time: TimeInterval, context: inout AnimationContext<V>) -> V? where V : VectorArithmetic {
        let paused = context.environment.animationPaused

        let pausableState = context.pausableState
        var pauseTime = pausableState.pauseTime
        if pausableState.paused != paused {
            pauseTime = time - pauseTime
            context.pausableState = PausableState(paused: paused, pauseTime: pauseTime)
        }

        let effectiveTime = paused ? pauseTime : time - pauseTime
        let result = base.animate(value: value, time: effectiveTime, context: &context)
        return result
    }
}
```

## Setting the default value

- [defaultValue](/documentation/swiftui/animationstatekey/defaultvalue) The default value for the animation state key.
- [Value](/documentation/swiftui/animationstatekey/value) The associated type representing the type of the animation state key’s value.

## Creating custom animations

- [CustomAnimation](/documentation/swiftui/customanimation)
- [AnimationContext](/documentation/swiftui/animationcontext)
- [AnimationState](/documentation/swiftui/animationstate)
- [UnitCurve](/documentation/swiftui/unitcurve)
- [Spring](/documentation/swiftui/spring)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
