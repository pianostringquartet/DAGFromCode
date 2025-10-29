---
title: scrollContentOffsetAdjustmentBehavior
description: The behavior a scroll view will have regarding content offset adjustments for the current transaction.
source: https://developer.apple.com/documentation/swiftui/transaction/scrollcontentoffsetadjustmentbehavior
timestamp: 2025-10-29T00:10:14.699Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [transaction](/documentation/swiftui/transaction)

**Instance Property**

# scrollContentOffsetAdjustmentBehavior

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The behavior a scroll view will have regarding content offset adjustments for the current transaction.

```swift
var scrollContentOffsetAdjustmentBehavior: ScrollContentOffsetAdjustmentBehavior { get set }
```

## Discussion

A scroll view may automatically adjust its content offset based on the current context. The absolute offset may be adjusted to keep content in relatively the same place. For example, when scrolled to the bottom, a scroll view may keep the bottom edge scrolled to the bottom when the overall size of its content changes.

Use this property to disable these kinds of adjustments when needed.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
