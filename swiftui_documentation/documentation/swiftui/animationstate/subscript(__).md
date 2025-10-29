---
title: subscript(_:)
description: Accesses the state for a custom key.
source: https://developer.apple.com/documentation/swiftui/animationstate/subscript(_:)
timestamp: 2025-10-29T00:13:18.980Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animationstate](/documentation/swiftui/animationstate)

**Instance Subscript**

# subscript(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Accesses the state for a custom key.

```swift
subscript<K>(key: K.Type) -> K.Value where K : AnimationStateKey { get set }
```

## Overview

Create a custom animation state value by defining a key that conforms to the [Animation State Key](/documentation/swiftui/animationstatekey) protocol and provide the [default Value](/documentation/swiftui/animationstatekey/defaultvalue) for the key. Also include properties to read and write state values that your [Custom Animation](/documentation/swiftui/customanimation) uses. For example, the following code defines a key named `PausableState` that has two state values, `paused` and `pauseTime`:

```swift
private struct PausableState<Value: VectorArithmetic>: AnimationStateKey {
    var paused = false
    var pauseTime: TimeInterval = 0.0

    static var defaultValue: Self { .init() }
}
```

Use that key with the subscript operator of the [Animation State](/documentation/swiftui/animationstate) structure to get and set a value for the key. For more convenient access to the key value, extend [Animation Context](/documentation/swiftui/animationcontext) with a computed property that gets and sets the key’s value.

```swift
extension AnimationContext {
    fileprivate var pausableState: PausableState<Value> {
        get { state[PausableState<Value>.self] }
        set { state[PausableState<Value>.self] = newValue }
    }
}
```

To access the state values in a [Custom Animation](/documentation/swiftui/customanimation), call the custom computed property, then read and write the state values that the custom [Animation State Key](/documentation/swiftui/animationstatekey) provides.

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

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
