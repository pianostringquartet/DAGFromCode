---
title: withAnimation(_:_:)
description: Returns the result of recomputing the view’s body with the provided animation.
source: https://developer.apple.com/documentation/swiftui/withanimation(_:_:)
timestamp: 2025-10-29T00:14:22.416Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Function**

# withAnimation(_:_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Returns the result of recomputing the view’s body with the provided animation.

```swift
func withAnimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result
```

## Discussion

This function sets the given [Animation](/documentation/swiftui/animation) as the [animation](/documentation/swiftui/transaction/animation) property of the thread’s current [Transaction](/documentation/swiftui/transaction).

## Adding state-based animation to an action

- [withAnimation(_:completionCriteria:_:completion:)](/documentation/swiftui/withanimation(_:completioncriteria:_:completion:))
- [AnimationCompletionCriteria](/documentation/swiftui/animationcompletioncriteria)
- [Animation](/documentation/swiftui/animation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
