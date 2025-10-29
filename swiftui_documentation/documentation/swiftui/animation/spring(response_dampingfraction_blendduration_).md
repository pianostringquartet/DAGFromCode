---
title: spring(response:dampingFraction:blendDuration:)
description: A persistent spring animation. When mixed with other  or  animations on the same property, each animation will be replaced by their successor, preserving velocity from one animation to the next. Optionally blends the response values between springs over a time period.
source: https://developer.apple.com/documentation/swiftui/animation/spring(response:dampingfraction:blendduration:)
timestamp: 2025-10-29T00:14:21.648Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Type Method**

# spring(response:dampingFraction:blendDuration:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A persistent spring animation. When mixed with other  or  animations on the same property, each animation will be replaced by their successor, preserving velocity from one animation to the next. Optionally blends the response values between springs over a time period.

```swift
static func spring(response: Double = 0.5, dampingFraction: Double = 0.825, blendDuration: TimeInterval = 0) -> Animation
```

## Parameters

**response**

The stiffness of the spring, defined as an approximate duration in seconds. A value of zero requests an infinitely-stiff spring, suitable for driving interactive animations.



**dampingFraction**

The amount of drag applied to the value being animated, as a fraction of an estimate of amount needed to produce critical damping.



**blendDuration**

The duration in seconds over which to interpolate changes to the response value of the spring.



## Return Value

A spring animation.

## Customizing spring animations

- [spring](/documentation/swiftui/animation/spring)
- [spring(_:blendDuration:)](/documentation/swiftui/animation/spring(_:blendduration:))
- [spring(duration:bounce:blendDuration:)](/documentation/swiftui/animation/spring(duration:bounce:blendduration:))
- [interactiveSpring](/documentation/swiftui/animation/interactivespring)
- [interactiveSpring(response:dampingFraction:blendDuration:)](/documentation/swiftui/animation/interactivespring(response:dampingfraction:blendduration:))
- [interpolatingSpring](/documentation/swiftui/animation/interpolatingspring)
- [interpolatingSpring(_:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(_:initialvelocity:))
- [interpolatingSpring(duration:bounce:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(duration:bounce:initialvelocity:))
- [interpolatingSpring(mass:stiffness:damping:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(mass:stiffness:damping:initialvelocity:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
