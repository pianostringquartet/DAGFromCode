---
title: listRowHoverEffectDisabled(_:)
description: Requests that the containing list row have its hover effect disabled.
source: https://developer.apple.com/documentation/swiftui/view/listrowhovereffectdisabled(_:)
timestamp: 2025-10-29T00:11:17.809Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# listRowHoverEffectDisabled(_:)

**Available on:** visionOS 1.0+

> Requests that the containing list row have its hover effect disabled.

```swift
nonisolated func listRowHoverEffectDisabled(_ disabled: Bool = true) -> some View
```

## Parameters

**disabled**

A Boolean value that determines whether the containing list row should display its default hover effect.



## Return Value

A view that requests the default hover effect on its containing list row to conditionally be disabled.

## Discussion

By default, `List` rows have built-in hover effects in visionOS. In some cases, it is useful to disable the default hover effect.

## Configuring interaction

- [swipeActions(edge:allowsFullSwipe:content:)](/documentation/swiftui/view/swipeactions(edge:allowsfullswipe:content:))
- [selectionDisabled(_:)](/documentation/swiftui/view/selectiondisabled(_:))
- [listRowHoverEffect(_:)](/documentation/swiftui/view/listrowhovereffect(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
