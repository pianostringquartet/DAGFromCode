---
title: Transaction
description: The context of the current state-processing update.
source: https://developer.apple.com/documentation/swiftui/transaction
timestamp: 2025-10-29T00:13:08.471Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Transaction

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The context of the current state-processing update.

```swift
@frozen struct Transaction
```

## Overview

Use a transaction to pass an animation between views in a view hierarchy.

The root transaction for a state change comes from the binding that changed, plus any global values set by calling [withTransaction(_:_:)](/documentation/swiftui/withtransaction(_:_:)) or [withAnimation(_:_:)](/documentation/swiftui/withanimation(_:_:)).

## Creating a transaction

- [init()](/documentation/swiftui/transaction/init()) Creates a transaction.
- [init(animation:)](/documentation/swiftui/transaction/init(animation:)) Creates a transaction and assigns its animation property.

## Managing animations

- [animation](/documentation/swiftui/transaction/animation) The animation, if any, associated with the current state change.
- [disablesAnimations](/documentation/swiftui/transaction/disablesanimations) A Boolean value that indicates whether views should disable animations.
- [addAnimationCompletion(criteria:_:)](/documentation/swiftui/transaction/addanimationcompletion(criteria:_:)) Adds a completion to run when the animations created with this transaction are all complete.

## Managing window dismissal

- [dismissBehavior](/documentation/swiftui/transaction/dismissbehavior) The behavior for how windows will dismiss programmatically when used in conjunction with .

## Getting information about a transaction

- [isContinuous](/documentation/swiftui/transaction/iscontinuous) A Boolean value that indicates whether the transaction originated from an action that produces a sequence of values.
- [scrollTargetAnchor](/documentation/swiftui/transaction/scrolltargetanchor) The preferred alignment of the view within a scroll view’s visible region when scrolling to a view.
- [tracksVelocity](/documentation/swiftui/transaction/tracksvelocity) Whether this transaction will track the velocity of any animatable properties that change.
- [subscript(_:)](/documentation/swiftui/transaction/subscript(_:)) Accesses the transaction value associated with a custom key.

## Instance Properties

- [scrollContentOffsetAdjustmentBehavior](/documentation/swiftui/transaction/scrollcontentoffsetadjustmentbehavior) The behavior a scroll view will have regarding content offset adjustments for the current transaction.
- [scrollPositionUpdatePreservesVelocity](/documentation/swiftui/transaction/scrollpositionupdatepreservesvelocity) Whether a programmatic update to the scroll position of a scroll view preserves the current velocity of any active scroll of the scroll view.

## Moving an animation to another view

- [withTransaction(_:_:)](/documentation/swiftui/withtransaction(_:_:))
- [withTransaction(_:_:_:)](/documentation/swiftui/withtransaction(_:_:_:))
- [transaction(_:)](/documentation/swiftui/view/transaction(_:))
- [transaction(value:_:)](/documentation/swiftui/view/transaction(value:_:))
- [transaction(_:body:)](/documentation/swiftui/view/transaction(_:body:))
- [Entry()](/documentation/swiftui/entry())
- [TransactionKey](/documentation/swiftui/transactionkey)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
