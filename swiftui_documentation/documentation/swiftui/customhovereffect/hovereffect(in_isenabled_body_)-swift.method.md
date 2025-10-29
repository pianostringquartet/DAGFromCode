---
title: hoverEffect(in:isEnabled:body:)
description: Applies a hover effect based on the current phase.
source: https://developer.apple.com/documentation/swiftui/customhovereffect/hovereffect(in:isenabled:body:)-swift.method
timestamp: 2025-10-29T00:29:44.503Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customhovereffect](/documentation/swiftui/customhovereffect)

**Instance Method**

# hoverEffect(in:isEnabled:body:)

**Available on:** visionOS 2.0+

> Applies a hover effect based on the current phase.

```swift
func hoverEffect(in group: HoverEffectGroup? = nil, isEnabled: Bool = true, body: @escaping (EmptyHoverEffectContent, Bool, GeometryProxy) -> some HoverEffectContent) -> some CustomHoverEffect
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

You use this modifier to describe how a view should change when hovered. The given closure is provided an empty effect that you use to compose an effect, as well as a boolean describing which phase is being requested. A [Geometry Proxy](/documentation/swiftui/geometryproxy) is also provided, allowing effects to change based on the view’s geometry.

In the following example, the effect will apply a scale of 1.0 to a view when inactive, and then scale to 1.1 when active:

```swift
struct ScaleHoverEffect: CustomHoverEffect {
    func body(content: Content) -> some CustomHoverEffect {
        content.hoverEffect { effect, isActive, proxy in
            effect.scaleEffect(!isActive ? 1.0 : 1.1)
        }
    }
}
```

Use the [animation(_:body:)](/documentation/swiftui/hovereffectcontent/animation(_:body:)) modifier to specify how visual changes should be animated.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
