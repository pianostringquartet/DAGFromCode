---
title: hoverEffect(in:isEnabled:body:)
description: Applies a hover effect to this view described by the given closure.
source: https://developer.apple.com/documentation/swiftui/view/hovereffect(in:isenabled:body:)
timestamp: 2025-10-29T00:13:52.246Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# hoverEffect(in:isEnabled:body:)

**Available on:** visionOS 2.0+

> Applies a hover effect to this view described by the given closure.

```swift
nonisolated func hoverEffect(in group: HoverEffectGroup? = nil, isEnabled: Bool = true, body: @escaping (EmptyHoverEffectContent, Bool, GeometryProxy) -> some HoverEffectContent) -> some View
```

## Parameters

**group**

An optional [Hover Effect Group](/documentation/swiftui/hovereffectgroup) to add this effect to.



**isEnabled**

Whether the effect is enabled or not. If `false`, the effect’s inactive state will be applied, and it will not apply the active state when hovered.



**body**

The closure that constructs a `HoverEffectContent` for each of the effect’s phases.



## Return Value

A new effect that changes a view’s appearance when hovered.

## Discussion

You use this modifier to describe how a view should change when hovered. The given block is provided an empty effect that you use to compose effects, as well as a boolean describing which phase is being requested. A [Geometry Proxy](/documentation/swiftui/geometryproxy) is also provided, allowing effects to change based on the view’s geometry.

In the following example, the `Text` will have a scale of 1.0 when inactive, and then scale to 1.1 when hovered:

```swift
Text("Hello, World!")
    .hoverEffect { effect, isActive, proxy in
        effect.scaleEffect(!isActive ? 1.0 : 1.1)
    }
```

Use the [animation(_:body:)](/documentation/swiftui/hovereffectcontent/animation(_:body:)) modifier to specify how visual changes should be animated.

## Changing view appearance for hover events

- [hoverEffect(_:)](/documentation/swiftui/view/hovereffect(_:))
- [HoverEffect](/documentation/swiftui/hovereffect)
- [hoverEffect(_:in:isEnabled:)](/documentation/swiftui/view/hovereffect(_:in:isenabled:))
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
