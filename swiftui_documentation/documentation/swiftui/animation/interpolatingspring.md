---
title: interpolatingSpring
description: An interpolating spring animation that uses a damped spring model to produce values in the range [0, 1] that are then used to interpolate within the [from, to] range of the animated property. Preserves velocity across overlapping animations by adding the effects of each animation.
source: https://developer.apple.com/documentation/swiftui/animation/interpolatingspring
timestamp: 2025-10-29T00:15:19.375Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Type Property**

# interpolatingSpring

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An interpolating spring animation that uses a damped spring model to produce values in the range [0, 1] that are then used to interpolate within the [from, to] range of the animated property. Preserves velocity across overlapping animations by adding the effects of each animation.

```swift
static var interpolatingSpring: Animation { get }
```

## Discussion

This uses the default parameter values.

## Customizing spring animations

- [spring](/documentation/swiftui/animation/spring)
- [spring(_:blendDuration:)](/documentation/swiftui/animation/spring(_:blendduration:))
- [spring(duration:bounce:blendDuration:)](/documentation/swiftui/animation/spring(duration:bounce:blendduration:))
- [spring(response:dampingFraction:blendDuration:)](/documentation/swiftui/animation/spring(response:dampingfraction:blendduration:))
- [interactiveSpring](/documentation/swiftui/animation/interactivespring)
- [interactiveSpring(response:dampingFraction:blendDuration:)](/documentation/swiftui/animation/interactivespring(response:dampingfraction:blendduration:))
- [interpolatingSpring(_:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(_:initialvelocity:))
- [interpolatingSpring(duration:bounce:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(duration:bounce:initialvelocity:))
- [interpolatingSpring(mass:stiffness:damping:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(mass:stiffness:damping:initialvelocity:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
