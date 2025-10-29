---
title: logicallyComplete(after:)
description: Causes the animation to report logical completion after the specified duration, if it has not already logically completed.
source: https://developer.apple.com/documentation/swiftui/animation/logicallycomplete(after:)
timestamp: 2025-10-29T00:14:29.909Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Instance Method**

# logicallyComplete(after:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Causes the animation to report logical completion after the specified duration, if it has not already logically completed.

```swift
func logicallyComplete(after duration: TimeInterval) -> Animation
```

## Parameters

**duration**

The duration after which the animation should  report that it is logically complete.



## Return Value

An animation that reports logical completion after the given duration.

## Discussion

Note that the indicated duration will not cause the animation to continue running after the base animation has fully completed.

If the animation is removed before the given duration is reached, logical completion will be reported immediately.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
