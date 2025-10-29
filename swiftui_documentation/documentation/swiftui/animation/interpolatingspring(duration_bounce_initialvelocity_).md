---
title: interpolatingSpring(duration:bounce:initialVelocity:)
description: An interpolating spring animation that uses a damped spring model to produce values in the range [0, 1] that are then used to interpolate within the [from, to] range of the animated property. Preserves velocity across overlapping animations by adding the effects of each animation.
source: https://developer.apple.com/documentation/swiftui/animation/interpolatingspring(duration:bounce:initialvelocity:)
timestamp: 2025-10-29T00:13:49.970Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Type Method**

# interpolatingSpring(duration:bounce:initialVelocity:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An interpolating spring animation that uses a damped spring model to produce values in the range [0, 1] that are then used to interpolate within the [from, to] range of the animated property. Preserves velocity across overlapping animations by adding the effects of each animation.

```swift
static func interpolatingSpring(duration: TimeInterval = 0.5, bounce: Double = 0.0, initialVelocity: Double = 0.0) -> Animation
```

## Parameters

**duration**

The perceptual duration, which defines the pace of the spring. This is approximately equal to the settling duration, but for very bouncy springs, will be the duration of the period of oscillation for the spring.



**bounce**

How bouncy the spring should be. A value of 0 indicates no bounces (a critically damped spring), positive values indicate increasing amounts of bounciness up to a maximum of 1.0 (corresponding to undamped oscillation), and negative values indicate overdamped springs with a minimum value of -1.0.



**initialVelocity**

The initial velocity of the spring, as a value in the range [0, 1] representing the magnitude of the value being animated.



## Return Value

A spring animation.

## Customizing spring animations

- [spring](/documentation/swiftui/animation/spring)
- [spring(_:blendDuration:)](/documentation/swiftui/animation/spring(_:blendduration:))
- [spring(duration:bounce:blendDuration:)](/documentation/swiftui/animation/spring(duration:bounce:blendduration:))
- [spring(response:dampingFraction:blendDuration:)](/documentation/swiftui/animation/spring(response:dampingfraction:blendduration:))
- [interactiveSpring](/documentation/swiftui/animation/interactivespring)
- [interactiveSpring(response:dampingFraction:blendDuration:)](/documentation/swiftui/animation/interactivespring(response:dampingfraction:blendduration:))
- [interpolatingSpring](/documentation/swiftui/animation/interpolatingspring)
- [interpolatingSpring(_:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(_:initialvelocity:))
- [interpolatingSpring(mass:stiffness:damping:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(mass:stiffness:damping:initialvelocity:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
