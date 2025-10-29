---
title: HoverEffect
description: An effect applied when the pointer hovers over a view.
source: https://developer.apple.com/documentation/swiftui/hovereffect
timestamp: 2025-10-29T00:12:47.308Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# HoverEffect

**Available on:** iOS 13.4+, iPadOS 13.4+, Mac Catalyst 13.4+, tvOS 16.0+, visionOS 1.0+

> An effect applied when the pointer hovers over a view.

```swift
struct HoverEffect
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [CustomHoverEffect](/documentation/swiftui/customhovereffect)

## Getting hover effects

- [automatic](/documentation/swiftui/hovereffect/automatic) An effect  that attempts to determine the effect automatically. This is the default effect.
- [highlight](/documentation/swiftui/hovereffect/highlight) An effect  that morphs the pointer into a platter behind the view and shows a light source indicating position.
- [lift](/documentation/swiftui/hovereffect/lift) An effect that slides the pointer under the view and disappears as the view scales up and gains a shadow.

## Initializers

- [init(_:)](/documentation/swiftui/hovereffect/init(_:)) Create a  that contains the specified custom hover effect.

## Changing view appearance for hover events

- [hoverEffect(_:)](/documentation/swiftui/view/hovereffect(_:))
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
