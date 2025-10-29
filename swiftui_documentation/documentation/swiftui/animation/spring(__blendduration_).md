---
title: spring(_:blendDuration:)
description: A persistent spring animation.
source: https://developer.apple.com/documentation/swiftui/animation/spring(_:blendduration:)
timestamp: 2025-10-29T00:15:15.852Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Type Method**

# spring(_:blendDuration:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A persistent spring animation.

```swift
static func spring(_ spring: Spring, blendDuration: TimeInterval = 0.0) -> Animation
```

## Discussion

When mixed with other `spring()` or `interactiveSpring()` animations on the same property, each animation will be replaced by their successor, preserving velocity from one animation to the next. Optionally blends the duration values between springs over a time period.

## Customizing spring animations

- [spring](/documentation/swiftui/animation/spring)
- [spring(duration:bounce:blendDuration:)](/documentation/swiftui/animation/spring(duration:bounce:blendduration:))
- [spring(response:dampingFraction:blendDuration:)](/documentation/swiftui/animation/spring(response:dampingfraction:blendduration:))
- [interactiveSpring](/documentation/swiftui/animation/interactivespring)
- [interactiveSpring(response:dampingFraction:blendDuration:)](/documentation/swiftui/animation/interactivespring(response:dampingfraction:blendduration:))
- [interpolatingSpring](/documentation/swiftui/animation/interpolatingspring)
- [interpolatingSpring(_:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(_:initialvelocity:))
- [interpolatingSpring(duration:bounce:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(duration:bounce:initialvelocity:))
- [interpolatingSpring(mass:stiffness:damping:initialVelocity:)](/documentation/swiftui/animation/interpolatingspring(mass:stiffness:damping:initialvelocity:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
