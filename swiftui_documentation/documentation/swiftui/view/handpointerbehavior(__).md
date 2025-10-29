---
title: handPointerBehavior(_:)
description: Sets the behavior of the hand pointer while the user is interacting with the view.
source: https://developer.apple.com/documentation/swiftui/view/handpointerbehavior(_:)
timestamp: 2025-10-29T00:14:01.253Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# handPointerBehavior(_:)

**Available on:** visionOS 2.0+

> Sets the behavior of the hand pointer while the user is interacting with the view.

```swift
nonisolated func handPointerBehavior(_ behavior: HandPointerBehavior?) -> some View
```

## Parameters

**behavior**

The behavior to apply to the hand pointer. If `nil`, the hand pointer behavior will be inherited from the view’s ancestors.



## Return Value

A view that applies the given behavior to the hand pointer.

## Changing view appearance for hover events

- [hoverEffect(_:)](/documentation/swiftui/view/hovereffect(_:))
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
- [HandPointerBehavior](/documentation/swiftui/handpointerbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
