---
title: state
description: The current state of a custom animation.
source: https://developer.apple.com/documentation/swiftui/animationcontext/state
timestamp: 2025-10-29T00:12:56.601Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animationcontext](/documentation/swiftui/animationcontext)

**Instance Property**

# state

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The current state of a custom animation.

```swift
var state: AnimationState<Value>
```

## Discussion

An instance of [Custom Animation](/documentation/swiftui/customanimation) uses this property to read and write state values as the animation runs.

An alternative to using the `state` property in a custom animation is to create an [Animation State Key](/documentation/swiftui/animationstatekey) type and extend [Animation Context](/documentation/swiftui/animationcontext) with a custom property that returns the state as a custom type. For example, the following code creates a state key named `PausableState`. It’s convenient to store state values in the key type, so the `PausableState` structure includes properties for the stored state values `paused` and `pauseTime`.

```swift
private struct PausableState<Value: VectorArithmetic>: AnimationStateKey {
    var paused = false
    var pauseTime: TimeInterval = 0.0

    static var defaultValue: Self { .init() }
}
```

To provide access to the pausable state, the following code extends `AnimationContext` to include the `pausableState` property. This property returns an instance of the custom `PausableState` structure stored in [state](/documentation/swiftui/animationcontext/state), and it can also store a new `PausableState` instance in `state`.

```swift
extension AnimationContext {
    fileprivate var pausableState: PausableState<Value> {
        get { state[PausableState<Value>.self] }
        set { state[PausableState<Value>.self] = newValue }
    }
}
```

Now a custom animation can use the `pausableState` property instead of the [state](/documentation/swiftui/animationcontext/state) property as a convenient way to read and write state values as the animation runs.

```swift
struct PausableAnimation: CustomAnimation {
    func animate<V>(value: V, time: TimeInterval, context: inout AnimationContext<V>) -> V? where V : VectorArithmetic {
        let pausableState = context.pausableState
        var pauseTime = pausableState.pauseTime
        ...
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
