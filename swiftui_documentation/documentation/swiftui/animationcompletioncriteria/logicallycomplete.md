---
title: logicallyComplete
description: The animation has logically completed, but may still be in its long tail.
source: https://developer.apple.com/documentation/swiftui/animationcompletioncriteria/logicallycomplete
timestamp: 2025-10-29T00:12:16.377Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animationcompletioncriteria](/documentation/swiftui/animationcompletioncriteria)

**Type Property**

# logicallyComplete

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The animation has logically completed, but may still be in its long tail.

```swift
static let logicallyComplete: AnimationCompletionCriteria
```

## Discussion

If a subsequent change occurs that creates additional animations on properties with `logicallyComplete` completion callbacks registered, then those callbacks will fire when the animations from the change that they were registered with logically complete, ignoring the new animations.

## Getting the completion criteria

- [removed](/documentation/swiftui/animationcompletioncriteria/removed)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
