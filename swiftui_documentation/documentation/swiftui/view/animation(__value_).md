---
title: animation(_:value:)
description: Applies the given animation to this view when the specified value changes.
source: https://developer.apple.com/documentation/swiftui/view/animation(_:value:)
timestamp: 2025-10-29T00:14:32.856Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# animation(_:value:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Applies the given animation to this view when the specified value changes.

```swift
nonisolated func animation<V>(_ animation: Animation?, value: V) -> some View where V : Equatable
```

## Parameters

**animation**

The animation to apply. If `animation` is `nil`, the view doesn’t animate.



**value**

A value to monitor for changes.



## Return Value

A view that applies `animation` to this view whenever `value` changes.

## Adding state-based animation to a view

- [animation(_:)](/documentation/swiftui/view/animation(_:))
- [animation(_:body:)](/documentation/swiftui/view/animation(_:body:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
