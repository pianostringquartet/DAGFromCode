---
title: addAnimationCompletion(criteria:_:)
description: Adds a completion to run when the animations created with this transaction are all complete.
source: https://developer.apple.com/documentation/swiftui/transaction/addanimationcompletion(criteria:_:)
timestamp: 2025-10-29T00:13:23.712Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [transaction](/documentation/swiftui/transaction)

**Instance Method**

# addAnimationCompletion(criteria:_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Adds a completion to run when the animations created with this transaction are all complete.

```swift
mutating func addAnimationCompletion(criteria: AnimationCompletionCriteria = .logicallyComplete, _ completion: @escaping () -> Void)
```

## Discussion

The completion callback will always be fired exactly one time. If no animations are created by the changes in `body`, then the callback will be called immediately after `body`.

## Managing animations

- [animation](/documentation/swiftui/transaction/animation)
- [disablesAnimations](/documentation/swiftui/transaction/disablesanimations)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
