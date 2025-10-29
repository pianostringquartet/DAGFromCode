---
title: settlingDuration(target:initialVelocity:epsilon:)
description: The estimated duration required for the spring system to be considered at rest.
source: https://developer.apple.com/documentation/swiftui/spring/settlingduration(target:initialvelocity:epsilon:)
timestamp: 2025-10-29T00:10:39.668Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Instance Method**

# settlingDuration(target:initialVelocity:epsilon:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The estimated duration required for the spring system to be considered at rest.

```swift
func settlingDuration<V>(target: V, initialVelocity: V = .zero, epsilon: Double) -> TimeInterval where V : VectorArithmetic
```

## Discussion

The epsilon value specifies the threshold for how small all subsequent values need to be before the spring is considered to have settled.

## Calculating forces and durations

- [force(target:position:velocity:)](/documentation/swiftui/spring/force(target:position:velocity:))
- [force(fromValue:toValue:position:velocity:)](/documentation/swiftui/spring/force(fromvalue:tovalue:position:velocity:))
- [settlingDuration(fromValue:toValue:initialVelocity:epsilon:)](/documentation/swiftui/spring/settlingduration(fromvalue:tovalue:initialvelocity:epsilon:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
