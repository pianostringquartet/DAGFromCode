---
title: Animation
description: The way a view changes over time to create a smooth visual transition from one state to another.
source: https://developer.apple.com/documentation/swiftui/animation
timestamp: 2025-10-29T00:10:58.460Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Animation

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The way a view changes over time to create a smooth visual transition from one state to another.

```swift
@frozen struct Animation
```

## Overview

An `Animation` provides a visual transition of a view when a state value changes from one value to another. The characteristics of this transition vary according to the animation type. For instance, a [linear](/documentation/swiftui/animation/linear) animation provides a mechanical feel to the animation because its speed is consistent from start to finish. In contrast, an animation that uses easing, like [ease Out](/documentation/swiftui/animation/easeout), offers a more natural feel by varying the acceleration of the animation.

To apply an animation to a view, add the [animation(_:value:)](/documentation/swiftui/view/animation(_:value:)) modifier, and specify both an animation type and the value to animate. For instance, the [Circle](/documentation/swiftui/circle) view in the following code performs an [ease In](/documentation/swiftui/animation/easein) animation each time the state variable `scale` changes:

```swift
struct ContentView: View {
    @State private var scale = 0.5

    var body: some View {
        VStack {
            Circle()
                .scaleEffect(scale)
                .animation(.easeIn, value: scale)
            HStack {
                Button("+") { scale += 0.1 }
                Button("-") { scale -= 0.1 }
            }
        }
        .padding()
    }
```

When the value of `scale` changes, the modifier [scaleEffect(_:anchor:)](/documentation/swiftui/view/scaleeffect(_:anchor:)) resizes [Circle](/documentation/swiftui/circle) according to the new value. SwiftUI can animate the transition between sizes because [Circle](/documentation/swiftui/circle) conforms to the [Shape](/documentation/swiftui/shape) protocol. Shapes in SwiftUI conform to the [Animatable](/documentation/swiftui/animatable) protocol, which describes how to animate a property of a view.

In addition to adding an animation to a view, you can also configure the animation by applying animation modifiers to the animation type. For example, you can:

- Delay the start of the animation by using the [delay(_:)](/documentation/swiftui/animation/delay(_:)) modifier.
- Repeat the animation by using the [repeatCount(_:autoreverses:)](/documentation/swiftui/animation/repeatcount(_:autoreverses:)) or [repeatForever(autoreverses:)](/documentation/swiftui/animation/repeatforever(autoreverses:)) modifiers.
- Change the speed of the animation by using the [speed(_:)](/documentation/swiftui/animation/speed(_:)) modifier.

For example, the [Circle](/documentation/swiftui/circle) view in the following code repeats the [ease In](/documentation/swiftui/animation/easein) animation three times by using the [repeatCount(_:autoreverses:)](/documentation/swiftui/animation/repeatcount(_:autoreverses:)) modifier:

```swift
struct ContentView: View {
    @State private var scale = 0.5

    var body: some View {
        VStack {
            Circle()
                .scaleEffect(scale)
                .animation(.easeIn.repeatCount(3), value: scale)
            HStack {
                Button("+") { scale += 0.1 }
                Button("-") { scale -= 0.1 }
            }
        }
        .padding()
    }
}
```

A view can also perform an animation when a binding value changes. To specify the animation type on a binding, call its [animation(_:)](/documentation/swiftui/binding/animation(_:)) method. For example, the view in the following code performs a [linear](/documentation/swiftui/animation/linear) animation, moving the box truck between the leading and trailing edges of the view. The truck moves each time a person clicks the [Toggle](/documentation/swiftui/toggle) control, which changes the value of the `$isTrailing` binding.

```swift
struct ContentView: View {
    @State private var isTrailing = false

    var body: some View {
       VStack(alignment: isTrailing ? .trailing : .leading) {
            Image(systemName: "box.truck")
                .font(.system(size: 64))

            Toggle("Move to trailing edge",
                   isOn: $isTrailing.animation(.linear))
        }
    }
}
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [CustomDebugStringConvertible](/documentation/Swift/CustomDebugStringConvertible)
- [CustomReflectable](/documentation/Swift/CustomReflectable)
- [CustomStringConvertible](/documentation/Swift/CustomStringConvertible)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the default animation

- [default](/documentation/swiftui/animation/default) A default animation instance.

## Getting linear animations

- [linear](/documentation/swiftui/animation/linear) An animation that moves at a constant speed.
- [linear(duration:)](/documentation/swiftui/animation/linear(duration:)) An animation that moves at a constant speed during a specified duration.

## Getting eased animations

- [easeIn](/documentation/swiftui/animation/easein) An animation that starts slowly and then increases speed towards the end of the movement.
- [easeIn(duration:)](/documentation/swiftui/animation/easein(duration:)) An animation with a specified duration that starts slowly and then increases speed towards the end of the movement.
- [easeOut](/documentation/swiftui/animation/easeout) An animation that starts quickly and then slows towards the end of the movement.
- [easeOut(duration:)](/documentation/swiftui/animation/easeout(duration:)) An animation with a specified duration that starts quickly and then slows towards the end of the movement.
- [easeInOut](/documentation/swiftui/animation/easeinout) An animation that combines the behaviors of in and out easing animations.
- [easeInOut(duration:)](/documentation/swiftui/animation/easeinout(duration:)) An animation with a specified duration that combines the behaviors of in and out easing animations.

## Getting built-in spring animations

- [bouncy](/documentation/swiftui/animation/bouncy) A spring animation with a predefined duration and higher amount of bounce.
- [bouncy(duration:extraBounce:)](/documentation/swiftui/animation/bouncy(duration:extrabounce:)) A spring animation with a predefined duration and higher amount of bounce that can be tuned.
- [smooth](/documentation/swiftui/animation/smooth) A smooth spring animation with a predefined duration and no bounce.
- [smooth(duration:extraBounce:)](/documentation/swiftui/animation/smooth(duration:extrabounce:)) A smooth spring animation with a predefined duration and no bounce that can be tuned.
- [snappy](/documentation/swiftui/animation/snappy) A spring animation with a predefined duration and small amount of bounce that feels more snappy.
- [snappy(duration:extraBounce:)](/documentation/swiftui/animation/snappy(duration:extrabounce:)) A spring animation with a predefined duration and small amount of bounce that feels more snappy and can be tuned.

## Customizing spring animations

- [spring](/documentation/swiftui/animation/spring) A persistent spring animation. When mixed with other  or  animations on the same property, each animation will be replaced by their successor, preserving velocity from one animation to the next. Optionally blends the response values between springs over a time period.
- [spring(_:blendDuration:)](/documentation/swiftui/animation/spring(_:blendduration:)) A persistent spring animation.
- [spring(duration:bounce:blendDuration:)](/documentation/swiftui/animation/spring(duration:bounce:blendduration:)) A persistent spring animation. When mixed with other  or  animations on the same property, each animation will be replaced by their successor, preserving velocity from one animation to the next. Optionally blends the duration values between springs over a time period.
- [spring(response:dampingFraction:blendDuration:)](/documentation/swiftui/animation/spring(response:dampingfraction:blendduration:)) A persistent spring animation. When mixed with other  or  animations on the same property, each animation will be replaced by their successor, preserving velocity from one animation to the next. Optionally blends the response values between springs over a time period.
- [interactiveSpring](/documentation/swiftui/animation/interactivespring) A convenience for a  animation with a lower  value, intended for driving interactive animations.
- [interactiveSpring(response:dampingFraction:blendDuration:)](/documentation/swiftui/animation/interactivespring(response:dampingfraction:blendduration:)) A convenience for a  animation with a lower  value, intended for driving interactive animations.
- [interpolatingSpring](/documentation/swiftui/animation/interpolatingspring) An interpolating spring animation that uses a damped spring model to produce values in the range [0, 1] that are then used to interpolate within the [from, to] range of the animated property. Preserves velocity across overlapping animations by adding the effects of each animation.
- [interpolatingSpring(_:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(_:initialvelocity:)) An interpolating spring animation that uses a damped spring model to produce values in the range of one to zero.
- [interpolatingSpring(duration:bounce:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(duration:bounce:initialvelocity:)) An interpolating spring animation that uses a damped spring model to produce values in the range [0, 1] that are then used to interpolate within the [from, to] range of the animated property. Preserves velocity across overlapping animations by adding the effects of each animation.
- [interpolatingSpring(mass:stiffness:damping:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(mass:stiffness:damping:initialvelocity:)) An interpolating spring animation that uses a damped spring model to produce values in the range [0, 1] that are then used to interpolate within the [from, to] range of the animated property. Preserves velocity across overlapping animations by adding the effects of each animation.

## Creating custom animations

- [init(_:)](/documentation/swiftui/animation/init(_:)) Create an  that contains the specified custom animation.
- [timingCurve(_:duration:)](/documentation/swiftui/animation/timingcurve(_:duration:)) Creates a new animation with speed controlled by the given curve.
- [timingCurve(_:_:_:_:duration:)](/documentation/swiftui/animation/timingcurve(_:_:_:_:duration:)) An animation created from a cubic Bézier timing curve.

## Configuring an animation

- [delay(_:)](/documentation/swiftui/animation/delay(_:)) Delays the start of the animation by the specified number of seconds.
- [repeatCount(_:autoreverses:)](/documentation/swiftui/animation/repeatcount(_:autoreverses:)) Repeats the animation for a specific number of times.
- [repeatForever(autoreverses:)](/documentation/swiftui/animation/repeatforever(autoreverses:)) Repeats the animation for the lifespan of the view containing the animation.
- [speed(_:)](/documentation/swiftui/animation/speed(_:)) Changes the duration of an animation by adjusting its speed.

## Instance Properties

- [base](/documentation/swiftui/animation/base)

## Instance Methods

- [animate(value:time:context:)](/documentation/swiftui/animation/animate(value:time:context:)) Calculates the current value of the animation.
- [logicallyComplete(after:)](/documentation/swiftui/animation/logicallycomplete(after:)) Causes the animation to report logical completion after the specified duration, if it has not already logically completed.
- [shouldMerge(previous:value:time:context:)](/documentation/swiftui/animation/shouldmerge(previous:value:time:context:)) Returns a Boolean value that indicates whether the current animation should merge with a previous animation.
- [velocity(value:time:context:)](/documentation/swiftui/animation/velocity(value:time:context:)) Calculates the current velocity of the animation.

## Type Properties

- [systemOverlayAppearance](/documentation/swiftui/animation/systemoverlayappearance) Animation used when system overlays appear.
- [systemOverlayDelayedDisappearance](/documentation/swiftui/animation/systemoverlaydelayeddisappearance) Animation used when system overlays disappear, with a delay equal to .
- [systemOverlayDisappearance](/documentation/swiftui/animation/systemoverlaydisappearance) Animation used when system overlays disappear.
- [systemOverlayDisappearanceDelay](/documentation/swiftui/animation/systemoverlaydisappearancedelay) The length of time system overlays remain visible before disappearing.

## Type Methods

- [interactiveSpring(duration:extraBounce:blendDuration:)](/documentation/swiftui/animation/interactivespring(duration:extrabounce:blendduration:)) A convenience for a  animation with a lower  value, intended for driving interactive animations.

## Adding state-based animation to an action

- [withAnimation(_:_:)](/documentation/swiftui/withanimation(_:_:))
- [withAnimation(_:completionCriteria:_:completion:)](/documentation/swiftui/withanimation(_:completioncriteria:_:completion:))
- [AnimationCompletionCriteria](/documentation/swiftui/animationcompletioncriteria)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
