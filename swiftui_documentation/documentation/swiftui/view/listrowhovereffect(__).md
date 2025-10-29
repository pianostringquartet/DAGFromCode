---
title: listRowHoverEffect(_:)
description: Requests that the containing list row use the provided hover effect.
source: https://developer.apple.com/documentation/swiftui/view/listrowhovereffect(_:)
timestamp: 2025-10-29T00:09:30.162Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# listRowHoverEffect(_:)

**Available on:** visionOS 1.0+

> Requests that the containing list row use the provided hover effect.

```swift
nonisolated func listRowHoverEffect(_ effect: HoverEffect?) -> some View
```

## Parameters

**effect**

The hover effect applied to the entire list row.



## Return Value

A view that requests a hover effect for a containing list row

## Discussion

By default, `List` rows have built-in hover effects in visionOS. In some cases, it is useful to change the default hover effect.

This modifier can be applied to a list row’s content to request that the list row’s default effect be replaced by the provided effect. If the view is not contained within a `List` or if the view does not support hover effects in this context, the modifier has no effect.

Use a `nil` effect to indicate that the list row’s default hover effect should not be modified.

[lift](/documentation/swiftui/hovereffect/lift) is not supported for list rows.

## Configuring interaction

- [swipeActions(edge:allowsFullSwipe:content:)](/documentation/swiftui/view/swipeactions(edge:allowsfullswipe:content:))
- [selectionDisabled(_:)](/documentation/swiftui/view/selectiondisabled(_:))
- [listRowHoverEffectDisabled(_:)](/documentation/swiftui/view/listrowhovereffectdisabled(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
