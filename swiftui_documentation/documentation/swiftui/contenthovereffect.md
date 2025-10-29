---
title: ContentHoverEffect
description: A  that applies effects to a view on hover using a closure.
source: https://developer.apple.com/documentation/swiftui/contenthovereffect
timestamp: 2025-10-29T00:09:11.596Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ContentHoverEffect

**Available on:** visionOS 26.0+

> A  that applies effects to a view on hover using a closure.

```swift
struct ContentHoverEffect<Effect> where Effect : HoverEffectContent
```

## Overview

Use the [hoverEffect(in:isEnabled:body:)-swift.type.method](/documentation/swiftui/customhovereffect/hovereffect(in:isenabled:body:)-swift.type.method) method or the `CustomHoverEffect/hoverEffect(in:isEnabled:body:)` or [hoverEffect(in:isEnabled:body:)](/documentation/swiftui/view/hovereffect(in:isenabled:body:)) modifiers to create content effects.

## Conforms To

- [CustomHoverEffect](/documentation/swiftui/customhovereffect)

## Changing view appearance for hover events

- [hoverEffect(_:)](/documentation/swiftui/view/hovereffect(_:))
- [HoverEffect](/documentation/swiftui/hovereffect)
- [hoverEffect(_:in:isEnabled:)](/documentation/swiftui/view/hovereffect(_:in:isenabled:))
- [hoverEffect(in:isEnabled:body:)](/documentation/swiftui/view/hovereffect(in:isenabled:body:))
- [CustomHoverEffect](/documentation/swiftui/customhovereffect)
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
