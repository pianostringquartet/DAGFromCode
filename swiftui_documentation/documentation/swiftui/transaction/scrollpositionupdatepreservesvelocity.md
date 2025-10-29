---
title: scrollPositionUpdatePreservesVelocity
description: Whether a programmatic update to the scroll position of a scroll view preserves the current velocity of any active scroll of the scroll view.
source: https://developer.apple.com/documentation/swiftui/transaction/scrollpositionupdatepreservesvelocity
timestamp: 2025-10-29T00:14:43.868Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [transaction](/documentation/swiftui/transaction)

**Instance Property**

# scrollPositionUpdatePreservesVelocity

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Whether a programmatic update to the scroll position of a scroll view preserves the current velocity of any active scroll of the scroll view.

```swift
var scrollPositionUpdatePreservesVelocity: Bool { get set }
```

## Discussion

By default, when a scroll view sees a programmatic update to its scroll position, it will stop any active scrolls for unanimated scrolls. If a programmatic update is animated, this property is ignored.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
