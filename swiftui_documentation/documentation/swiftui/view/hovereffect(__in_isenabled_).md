---
title: hoverEffect(_:in:isEnabled:)
description: Applies a hover effect to this view, optionally adding it to a .
source: https://developer.apple.com/documentation/swiftui/view/hovereffect(_:in:isenabled:)
timestamp: 2025-10-29T00:15:19.823Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# hoverEffect(_:in:isEnabled:)

**Available on:** visionOS 2.0+

> Applies a hover effect to this view, optionally adding it to a .

```swift
nonisolated func hoverEffect(_ effect: some CustomHoverEffect, in group: HoverEffectGroup?, isEnabled: Bool = true) -> some View
```

## Parameters

**effect**

The effect to apply to this view.



**group**

An optional `HoverEffectGroup` the effect should belong to.



**isEnabled**

Whether this effect is enabled or not.



## Return Value

A new view that applies the hover effect to `self` whenever the view is hovered, or the [Hover Effect Group](/documentation/swiftui/hovereffectgroup) is activated.

## Changing view appearance for hover events

- [hoverEffect(_:)](/documentation/swiftui/view/hovereffect(_:))
- [HoverEffect](/documentation/swiftui/hovereffect)
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
