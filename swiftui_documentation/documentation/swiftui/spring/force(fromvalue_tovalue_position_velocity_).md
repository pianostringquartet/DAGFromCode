---
title: force(fromValue:toValue:position:velocity:)
description: Calculates the force upon the spring given a current position, velocity, and divisor from the starting and end values for the spring to travel.
source: https://developer.apple.com/documentation/swiftui/spring/force(fromvalue:tovalue:position:velocity:)
timestamp: 2025-10-29T00:10:00.509Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Instance Method**

# force(fromValue:toValue:position:velocity:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Calculates the force upon the spring given a current position, velocity, and divisor from the starting and end values for the spring to travel.

```swift
func force<V>(fromValue: V, toValue: V, position: V, velocity: V) -> V where V : Animatable
```

## Discussion

This value is in units of the vector type per second squared.

## Calculating forces and durations

- [force(target:position:velocity:)](/documentation/swiftui/spring/force(target:position:velocity:))
- [settlingDuration(target:initialVelocity:epsilon:)](/documentation/swiftui/spring/settlingduration(target:initialvelocity:epsilon:))
- [settlingDuration(fromValue:toValue:initialVelocity:epsilon:)](/documentation/swiftui/spring/settlingduration(fromvalue:tovalue:initialvelocity:epsilon:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
