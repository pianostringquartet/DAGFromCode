---
title: isContinuous
description: A Boolean value that indicates whether the transaction originated from an action that produces a sequence of values.
source: https://developer.apple.com/documentation/swiftui/transaction/iscontinuous
timestamp: 2025-10-29T00:14:29.577Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [transaction](/documentation/swiftui/transaction)

**Instance Property**

# isContinuous

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A Boolean value that indicates whether the transaction originated from an action that produces a sequence of values.

```swift
var isContinuous: Bool { get set }
```

## Discussion

This value is `true` if a continuous action created the transaction, and is `false` otherwise. Continuous actions include things like dragging a slider or pressing and holding a stepper, as opposed to tapping a button.

## Getting information about a transaction

- [scrollTargetAnchor](/documentation/swiftui/transaction/scrolltargetanchor)
- [tracksVelocity](/documentation/swiftui/transaction/tracksvelocity)
- [subscript(_:)](/documentation/swiftui/transaction/subscript(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
