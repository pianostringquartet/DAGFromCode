---
title: animation(_:)
description: Applies the given animation to this view when this view changes.
source: https://developer.apple.com/documentation/swiftui/view/animation(_:)
timestamp: 2025-10-29T00:14:21.602Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# animation(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Applies the given animation to this view when this view changes.

```swift
nonisolated func animation(_ animation: Animation?) -> some View
```

## Parameters

**animation**

The animation to apply. If `animation` is `nil`, the view doesn’t animate.



## Return Value

A view that applies `animation` to this view whenever it changes.

## Adding state-based animation to a view

- [animation(_:value:)](/documentation/swiftui/view/animation(_:value:))
- [animation(_:body:)](/documentation/swiftui/view/animation(_:body:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
