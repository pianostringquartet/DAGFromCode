---
title: hoverEffect(_:)
description: Applies a hover effect to this view.
source: https://developer.apple.com/documentation/swiftui/view/hovereffect(_:)
timestamp: 2025-10-29T00:11:20.983Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# hoverEffect(_:)

**Available on:** iOS 13.4+, iPadOS 13.4+, Mac Catalyst 13.4+, tvOS 16.0+, visionOS 1.0+

> Applies a hover effect to this view.

```swift
nonisolated func hoverEffect(_ effect: HoverEffect = .automatic) -> some View
```

## Parameters

**effect**

The effect to apply to this view.



## Return Value

A new view that applies a hover effect to `self`.

## Discussion

By default, [automatic](/documentation/swiftui/hovereffect/automatic) is used. You can control the behavior of the automatic effect with the [defaultHoverEffect(_:)](/documentation/swiftui/view/defaulthovereffect(_:)) modifier.

## Changing view appearance for hover events

- [HoverEffect](/documentation/swiftui/hovereffect)
- [hoverEffect(_:in:isEnabled:)](/documentation/swiftui/view/hovereffect(_:in:isenabled:))
- [hoverEffect(in:isEnabled:body:)](/documentation/swiftui/view/hovereffect(in:isenabled:body:))
- [CustomHoverEffect](/documentation/swiftui/customhovereffect)
- [ContentHoverEffect](/documentation/swiftui/contenthovereffect)
- [HoverEffectGroup](/documentation/swiftui/hovereffectgroup)
- [hoverEffectGroup()](/documentation/swiftui/view/hovereffectgroup())
- [hoverEffectGroup(_:)](/documentation/swiftui/view/hovereffectgroup(_:))
- [hoverEffectGroup(id:in:behavior:)](/documentation/swiftui/view/hovereffectgroup(id:in:behavior:))
- [GroupHoverEffect](/documentation/swiftui/grouphovereffect)
- [HoverEffectContent](/documentation/swiftui/hovereffectcontent)
- [EmptyHoverEffectContent](/documentation/swiftui/emptyhovereffectcontent)
- [handPointerBehavior(_:)](/documentation/swiftui/view/handpointerbehavior(_:))
- [HandPointerBehavior](/documentation/swiftui/handpointerbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
