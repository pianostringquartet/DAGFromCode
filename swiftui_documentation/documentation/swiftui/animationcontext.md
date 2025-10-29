---
title: AnimationContext
description: Contextual values that a custom animation can use to manage state and access a view’s environment.
source: https://developer.apple.com/documentation/swiftui/animationcontext
timestamp: 2025-10-29T00:12:53.083Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AnimationContext

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Contextual values that a custom animation can use to manage state and access a view’s environment.

```swift
struct AnimationContext<Value> where Value : VectorArithmetic
```

## Overview

The system provides an `AnimationContext` to a [Custom Animation](/documentation/swiftui/customanimation) instance so that the animation can store and retrieve values in an instance of [Animation State](/documentation/swiftui/animationstate). To access these values, use the context’s [state](/documentation/swiftui/animationcontext/state) property.

For more convenient access to state, create an [Animation State Key](/documentation/swiftui/animationstatekey) and extend `AnimationContext` to include a computed property that gets and sets the [Animation State](/documentation/swiftui/animationstate) value. Then use this property instead of [state](/documentation/swiftui/animationcontext/state) to retrieve the state of a custom animation. For example, the following code creates an animation state key named `PausableState`. Then the code extends `AnimationContext` to include the `pausableState` property:

```swift
private struct PausableState<Value: VectorArithmetic>: AnimationStateKey {
    var paused = false
    var pauseTime: TimeInterval = 0.0

    static var defaultValue: Self { .init() }
}

extension AnimationContext {
    fileprivate var pausableState: PausableState<Value> {
        get { state[PausableState<Value>.self] }
        set { state[PausableState<Value>.self] = newValue }
    }
}
```

To access the pausable state, the custom animation `PausableAnimation` uses the `pausableState` property instead of the [state](/documentation/swiftui/animationcontext/state) property:

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

The animation can also retrieve environment values of the view that created the animation. To retrieve a view’s environment value, use the context’s [environment](/documentation/swiftui/animationcontext/environment) property. For instance, the following code creates a custom [Environment Values](/documentation/swiftui/environmentvalues) property named `animationPaused`, and the view `PausableAnimationView` uses the property to store the paused state:

```swift
extension EnvironmentValues {
    @Entry var animationPaused: Bool = false
}

struct PausableAnimationView: View {
    @State private var paused = false

    var body: some View {
        VStack {
            ...
        }
        .environment(\.animationPaused, paused)
    }
}
```

Then the custom animation `PausableAnimation` retrieves the paused state from the view’s environment using the [environment](/documentation/swiftui/animationcontext/environment) property:

```swift
struct PausableAnimation: CustomAnimation {
    func animate<V>(value: V, time: TimeInterval, context: inout AnimationContext<V>) -> V? where V : VectorArithmetic {
        let paused = context.environment.animationPaused
        ...
    }
}
```

## Managing state

- [state](/documentation/swiftui/animationcontext/state) The current state of a custom animation.

## Retrieving view environment values

- [environment](/documentation/swiftui/animationcontext/environment) The current environment of the view that created the custom animation.

## Creating context

- [withState(_:)](/documentation/swiftui/animationcontext/withstate(_:)) Creates a new context from another one with a state that you provide.

## Instance Properties

- [isLogicallyComplete](/documentation/swiftui/animationcontext/islogicallycomplete) Set this to  to indicate that an animation is logically complete.

## Creating custom animations

- [CustomAnimation](/documentation/swiftui/customanimation)
- [AnimationState](/documentation/swiftui/animationstate)
- [AnimationStateKey](/documentation/swiftui/animationstatekey)
- [UnitCurve](/documentation/swiftui/unitcurve)
- [Spring](/documentation/swiftui/spring)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
