---
title: AnimationCompletionCriteria
description: The criteria that determines when an animation is considered finished.
source: https://developer.apple.com/documentation/swiftui/animationcompletioncriteria
timestamp: 2025-10-29T00:14:15.066Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AnimationCompletionCriteria

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The criteria that determines when an animation is considered finished.

```swift
struct AnimationCompletionCriteria
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the completion criteria

- [logicallyComplete](/documentation/swiftui/animationcompletioncriteria/logicallycomplete) The animation has logically completed, but may still be in its long tail.
- [removed](/documentation/swiftui/animationcompletioncriteria/removed) The entire animation is finished and will now be removed.

## Adding state-based animation to an action

- [withAnimation(_:_:)](/documentation/swiftui/withanimation(_:_:))
- [withAnimation(_:completionCriteria:_:completion:)](/documentation/swiftui/withanimation(_:completioncriteria:_:completion:))
- [Animation](/documentation/swiftui/animation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
