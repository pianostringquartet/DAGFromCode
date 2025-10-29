---
title: force(target:position:velocity:)
description: Calculates the force upon the spring given a current position, target, and velocity amount of change.
source: https://developer.apple.com/documentation/swiftui/spring/force(target:position:velocity:)
timestamp: 2025-10-29T00:09:41.273Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Instance Method**

# force(target:position:velocity:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Calculates the force upon the spring given a current position, target, and velocity amount of change.

```swift
func force<V>(target: V, position: V, velocity: V) -> V where V : VectorArithmetic
```

## Discussion

This value is in units of the vector type per second squared.

## Calculating forces and durations

- [force(fromValue:toValue:position:velocity:)](/documentation/swiftui/spring/force(fromvalue:tovalue:position:velocity:))
- [settlingDuration(target:initialVelocity:epsilon:)](/documentation/swiftui/spring/settlingduration(target:initialvelocity:epsilon:))
- [settlingDuration(fromValue:toValue:initialVelocity:epsilon:)](/documentation/swiftui/spring/settlingduration(fromvalue:tovalue:initialvelocity:epsilon:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
