---
title: isLogicallyComplete
description: Set this to  to indicate that an animation is logically complete.
source: https://developer.apple.com/documentation/swiftui/animationcontext/islogicallycomplete
timestamp: 2025-10-29T00:14:28.768Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animationcontext](/documentation/swiftui/animationcontext)

**Instance Property**

# isLogicallyComplete

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Set this to  to indicate that an animation is logically complete.

```swift
var isLogicallyComplete: Bool
```

## Discussion

This controls when AnimationCompletionCriteria.logicallyComplete completion callbacks are fired. This should be set to `true` at most once in the life of an animation, changing back to `false` later will be ignored. If this is never set to `true`, the behavior is equivalent to if this had been set to `true` just as the animation finished (by returning `nil`).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
