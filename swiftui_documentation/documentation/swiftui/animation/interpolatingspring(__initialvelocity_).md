---
title: interpolatingSpring(_:initialVelocity:)
description: An interpolating spring animation that uses a damped spring model to produce values in the range of one to zero.
source: https://developer.apple.com/documentation/swiftui/animation/interpolatingspring(_:initialvelocity:)
timestamp: 2025-10-29T00:11:25.194Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Type Method**

# interpolatingSpring(_:initialVelocity:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> An interpolating spring animation that uses a damped spring model to produce values in the range of one to zero.

```swift
static func interpolatingSpring(_ spring: Spring, initialVelocity: Double = 0.0) -> Animation
```

## Discussion

These vales are used to interpolate within the `[from, to]` range of the animated property. Preserves velocity across overlapping animations by adding the effects of each animation.

## Customizing spring animations

- [spring](/documentation/swiftui/animation/spring)
- [spring(_:blendDuration:)](/documentation/swiftui/animation/spring(_:blendduration:))
- [spring(duration:bounce:blendDuration:)](/documentation/swiftui/animation/spring(duration:bounce:blendduration:))
- [spring(response:dampingFraction:blendDuration:)](/documentation/swiftui/animation/spring(response:dampingfraction:blendduration:))
- [interactiveSpring](/documentation/swiftui/animation/interactivespring)
- [interactiveSpring(response:dampingFraction:blendDuration:)](/documentation/swiftui/animation/interactivespring(response:dampingfraction:blendduration:))
- [interpolatingSpring](/documentation/swiftui/animation/interpolatingspring)
- [interpolatingSpring(duration:bounce:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(duration:bounce:initialvelocity:))
- [interpolatingSpring(mass:stiffness:damping:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(mass:stiffness:damping:initialvelocity:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
