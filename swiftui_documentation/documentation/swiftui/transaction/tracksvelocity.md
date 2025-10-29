---
title: tracksVelocity
description: Whether this transaction will track the velocity of any animatable properties that change.
source: https://developer.apple.com/documentation/swiftui/transaction/tracksvelocity
timestamp: 2025-10-29T00:10:18.487Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [transaction](/documentation/swiftui/transaction)

**Instance Property**

# tracksVelocity

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Whether this transaction will track the velocity of any animatable properties that change.

```swift
var tracksVelocity: Bool { get set }
```

## Discussion

This property can be enabled in an interactive context to track velocity during a user interaction so that when the interaction ends, an animation can use the accumulated velocities to create animations that preserve them. This tracking is mutually exclusive with an animation being used during a view change, since if there is an animation, it is responsible for managing its own velocity.

Gesture onChanged and updating callbacks automatically set this property to true.

This example shows an interaction which applies changes, tracking velocity until the final change, which applies an animation (which will start with the velocity that was tracked during the previous changes). These changes could come from a server or from an interactive control like a slider.

```swift
func receiveChange(change: ChangeInfo) {
    var transaction = Transaction()
    if change.isFinal {
        transaction.animation = .spring
    } else {
        transaction.tracksVelocity = true
    }
    withTransaction(transaction) {
        state.applyChange(change)
    }
}
```

## Getting information about a transaction

- [isContinuous](/documentation/swiftui/transaction/iscontinuous)
- [scrollTargetAnchor](/documentation/swiftui/transaction/scrolltargetanchor)
- [subscript(_:)](/documentation/swiftui/transaction/subscript(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
