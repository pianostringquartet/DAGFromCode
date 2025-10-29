---
title: withAnimation(_:completionCriteria:_:completion:)
description: Returns the result of recomputing the view’s body with the provided animation, and runs the completion when all animations are complete.
source: https://developer.apple.com/documentation/swiftui/withanimation(_:completioncriteria:_:completion:)
timestamp: 2025-10-29T00:11:22.829Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Function**

# withAnimation(_:completionCriteria:_:completion:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns the result of recomputing the view’s body with the provided animation, and runs the completion when all animations are complete.

```swift
func withAnimation<Result>(_ animation: Animation? = .default, completionCriteria: AnimationCompletionCriteria = .logicallyComplete, _ body: () throws -> Result, completion: @escaping () -> Void) rethrows -> Result
```

## Discussion

This function sets the given [Animation](/documentation/swiftui/animation) as the [animation](/documentation/swiftui/transaction/animation) property of the thread’s current [Transaction](/documentation/swiftui/transaction) as well as calling `Transaction/addAnimationCompletion` with the specified completion.

The completion callback will always be fired exactly one time. If no animations are created by the changes in `body`, then the callback will be called immediately after `body`.

## Adding state-based animation to an action

- [withAnimation(_:_:)](/documentation/swiftui/withanimation(_:_:))
- [AnimationCompletionCriteria](/documentation/swiftui/animationcompletioncriteria)
- [Animation](/documentation/swiftui/animation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
