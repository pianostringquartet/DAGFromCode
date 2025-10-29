---
title: shouldMerge(previous:value:time:context:)
description: Returns a Boolean value that indicates whether the current animation should merge with a previous animation.
source: https://developer.apple.com/documentation/swiftui/animation/shouldmerge(previous:value:time:context:)
timestamp: 2025-10-29T00:13:54.927Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Instance Method**

# shouldMerge(previous:value:time:context:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns a Boolean value that indicates whether the current animation should merge with a previous animation.

```swift
func shouldMerge<V>(previous: Animation, value: V, time: TimeInterval, context: inout AnimationContext<V>) -> Bool where V : VectorArithmetic
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
