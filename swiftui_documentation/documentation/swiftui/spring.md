---
title: Spring
description: A representation of a spring’s motion.
source: https://developer.apple.com/documentation/swiftui/spring
timestamp: 2025-10-29T00:11:35.175Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Spring

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A representation of a spring’s motion.

```swift
struct Spring
```

## Overview

Use this type to convert between different representations of spring parameters:

```swift
let spring = Spring(duration: 0.5, bounce: 0.3)
let (mass, stiffness, damping) = (spring.mass, spring.stiffness, spring.damping)
// (1.0, 157.9, 17.6)

let spring2 = Spring(mass: 1, stiffness: 100, damping: 10)
let (duration, bounce) = (spring2.duration, spring2.bounce)
// (0.63, 0.5)
```

You can also use it to query for a spring’s position and its other properties for a given set of inputs:

```swift
func unitPosition(time: TimeInterval) -> Double {
    let spring = Spring(duration: 0.5, bounce: 0.3)
    return spring.position(target: 1.0, time: time)
}
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a spring

- [init(duration:bounce:)](/documentation/swiftui/spring/init(duration:bounce:)) Creates a spring with the specified duration and bounce.
- [init(mass:stiffness:damping:allowOverDamping:)](/documentation/swiftui/spring/init(mass:stiffness:damping:allowoverdamping:)) Creates a spring with the specified mass, stiffness, and damping.
- [init(response:dampingRatio:)](/documentation/swiftui/spring/init(response:dampingratio:)) Creates a spring with the specified response and damping ratio.
- [init(settlingDuration:dampingRatio:epsilon:)](/documentation/swiftui/spring/init(settlingduration:dampingratio:epsilon:)) Creates a spring with the specified duration and damping ratio.

## Getting built-in springs

- [bouncy](/documentation/swiftui/spring/bouncy) A spring with a predefined duration and higher amount of bounce.
- [bouncy(duration:extraBounce:)](/documentation/swiftui/spring/bouncy(duration:extrabounce:)) A spring with a predefined duration and higher amount of bounce that can be tuned.
- [smooth](/documentation/swiftui/spring/smooth) A smooth spring with a predefined duration and no bounce.
- [smooth(duration:extraBounce:)](/documentation/swiftui/spring/smooth(duration:extrabounce:)) A smooth spring with a predefined duration and no bounce that can be tuned.
- [snappy](/documentation/swiftui/spring/snappy) A spring with a predefined duration and small amount of bounce that feels more snappy.
- [snappy(duration:extraBounce:)](/documentation/swiftui/spring/snappy(duration:extrabounce:)) A spring with a predefined duration and small amount of bounce that feels more snappy and can be tuned.

## Getting spring characteristics

- [bounce](/documentation/swiftui/spring/bounce) How bouncy the spring is.
- [damping](/documentation/swiftui/spring/damping) Defines how the spring’s motion should be damped due to the forces of friction.
- [dampingRatio](/documentation/swiftui/spring/dampingratio) The amount of drag applied, as a fraction of the amount needed to produce critical damping.
- [duration](/documentation/swiftui/spring/duration) The perceptual duration, which defines the pace of the spring.
- [mass](/documentation/swiftui/spring/mass) The mass of the object attached to the end of the spring.
- [response](/documentation/swiftui/spring/response) The stiffness of the spring, defined as an approximate duration in seconds.
- [settlingDuration](/documentation/swiftui/spring/settlingduration) The estimated duration required for the spring system to be considered at rest.
- [stiffness](/documentation/swiftui/spring/stiffness) The spring stiffness coefficient.

## Getting spring state

- [value(target:initialVelocity:time:)](/documentation/swiftui/spring/value(target:initialvelocity:time:)) Calculates the value of the spring at a given time given a target amount of change.
- [value(fromValue:toValue:initialVelocity:time:)](/documentation/swiftui/spring/value(fromvalue:tovalue:initialvelocity:time:)) Calculates the value of the spring at a given time for a starting and ending value for the spring to travel.
- [velocity(target:initialVelocity:time:)](/documentation/swiftui/spring/velocity(target:initialvelocity:time:)) Calculates the velocity of the spring at a given time given a target amount of change.
- [velocity(fromValue:toValue:initialVelocity:time:)](/documentation/swiftui/spring/velocity(fromvalue:tovalue:initialvelocity:time:)) Calculates the velocity of the spring at a given time given a starting and ending value for the spring to travel.

## Setting spring state

- [update(value:velocity:target:deltaTime:)](/documentation/swiftui/spring/update(value:velocity:target:deltatime:)) Updates the current  value and velocity of a spring.

## Calculating forces and durations

- [force(target:position:velocity:)](/documentation/swiftui/spring/force(target:position:velocity:)) Calculates the force upon the spring given a current position, target, and velocity amount of change.
- [force(fromValue:toValue:position:velocity:)](/documentation/swiftui/spring/force(fromvalue:tovalue:position:velocity:)) Calculates the force upon the spring given a current position, velocity, and divisor from the starting and end values for the spring to travel.
- [settlingDuration(target:initialVelocity:epsilon:)](/documentation/swiftui/spring/settlingduration(target:initialvelocity:epsilon:)) The estimated duration required for the spring system to be considered at rest.
- [settlingDuration(fromValue:toValue:initialVelocity:epsilon:)](/documentation/swiftui/spring/settlingduration(fromvalue:tovalue:initialvelocity:epsilon:)) The estimated duration required for the spring system to be considered at rest.

## Creating custom animations

- [CustomAnimation](/documentation/swiftui/customanimation)
- [AnimationContext](/documentation/swiftui/animationcontext)
- [AnimationState](/documentation/swiftui/animationstate)
- [AnimationStateKey](/documentation/swiftui/animationstatekey)
- [UnitCurve](/documentation/swiftui/unitcurve)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
