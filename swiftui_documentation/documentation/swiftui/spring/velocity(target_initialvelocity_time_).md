---
title: velocity(target:initialVelocity:time:)
description: Calculates the velocity of the spring at a given time given a target amount of change.
source: https://developer.apple.com/documentation/swiftui/spring/velocity(target:initialvelocity:time:)
timestamp: 2025-10-29T00:10:17.232Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spring](/documentation/swiftui/spring)

**Instance Method**

# velocity(target:initialVelocity:time:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Calculates the velocity of the spring at a given time given a target amount of change.

```swift
func velocity<V>(target: V, initialVelocity: V = .zero, time: TimeInterval) -> V where V : VectorArithmetic
```

## Getting spring state

- [value(target:initialVelocity:time:)](/documentation/swiftui/spring/value(target:initialvelocity:time:))
- [value(fromValue:toValue:initialVelocity:time:)](/documentation/swiftui/spring/value(fromvalue:tovalue:initialvelocity:time:))
- [velocity(fromValue:toValue:initialVelocity:time:)](/documentation/swiftui/spring/velocity(fromvalue:tovalue:initialvelocity:time:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
