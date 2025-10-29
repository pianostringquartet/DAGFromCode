---
title: disablesAnimations
description: A Boolean value that indicates whether views should disable animations.
source: https://developer.apple.com/documentation/swiftui/transaction/disablesanimations
timestamp: 2025-10-29T00:13:28.200Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [transaction](/documentation/swiftui/transaction)

**Instance Property**

# disablesAnimations

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A Boolean value that indicates whether views should disable animations.

```swift
var disablesAnimations: Bool { get set }
```

## Discussion

This value is `true` during the initial phase of a two-part transition update, to prevent [animation(_:)](/documentation/swiftui/view/animation(_:)) from inserting new animations into the transaction.

## Managing animations

- [animation](/documentation/swiftui/transaction/animation)
- [addAnimationCompletion(criteria:_:)](/documentation/swiftui/transaction/addanimationcompletion(criteria:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
