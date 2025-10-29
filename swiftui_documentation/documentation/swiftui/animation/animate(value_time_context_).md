---
title: animate(value:time:context:)
description: Calculates the current value of the animation.
source: https://developer.apple.com/documentation/swiftui/animation/animate(value:time:context:)
timestamp: 2025-10-29T00:10:57.927Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Instance Method**

# animate(value:time:context:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Calculates the current value of the animation.

```swift
func animate<V>(value: V, time: TimeInterval, context: inout AnimationContext<V>) -> V? where V : VectorArithmetic
```

## Return Value

The current value of the animation, or `nil` if the animation has finished.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
