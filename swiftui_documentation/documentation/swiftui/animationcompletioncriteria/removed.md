---
title: removed
description: The entire animation is finished and will now be removed.
source: https://developer.apple.com/documentation/swiftui/animationcompletioncriteria/removed
timestamp: 2025-10-29T00:14:45.707Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animationcompletioncriteria](/documentation/swiftui/animationcompletioncriteria)

**Type Property**

# removed

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The entire animation is finished and will now be removed.

```swift
static let removed: AnimationCompletionCriteria
```

## Discussion

If a subsequent change occurs that creates additional animations on properties with `removed` completion callbacks registered, then those callbacks will only fire when *all* of the created animations are complete.

## Getting the completion criteria

- [logicallyComplete](/documentation/swiftui/animationcompletioncriteria/logicallycomplete)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
