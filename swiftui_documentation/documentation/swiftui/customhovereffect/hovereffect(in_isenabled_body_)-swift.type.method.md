---
title: hoverEffect(in:isEnabled:body:)
description: Creates a hover effect that applies effects to a view using the given closure.
source: https://developer.apple.com/documentation/swiftui/customhovereffect/hovereffect(in:isenabled:body:)-swift.type.method
timestamp: 2025-10-29T00:29:44.782Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customhovereffect](/documentation/swiftui/customhovereffect)

**Type Method**

# hoverEffect(in:isEnabled:body:)

**Available on:** visionOS 26.0+

> Creates a hover effect that applies effects to a view using the given closure.

```swift
static func hoverEffect<C>(in group: HoverEffectGroup? = nil, isEnabled: Bool = true, body: @escaping (EmptyHoverEffectContent, Bool, GeometryProxy) -> C) -> ContentHoverEffect<C> where Self == ContentHoverEffect<C>, C : HoverEffectContent
```

## Parameters

**group**

An optional [Hover Effect Group](/documentation/swiftui/hovereffectgroup) to add this effect to.



**isEnabled**

Whether the effect is enabled or not. If `false`, the effect will not become active when hovered.



**body**

The closure that constructs a `HoverEffectContent` for each of the effect’s phases.



## Return Value

A new effect that applies effects to a view using the given body closure.

## Discussion

The closure is provided an empty effect that you use to compose effects, as well as a boolean describing which phase is being requested. A [Geometry Proxy](/documentation/swiftui/geometryproxy) is also provided, allowing effects to change based on the view’s geometry.

Typically the `CustomHoverEffect/hoverEffect(in:isEnabled:body:)` or [hoverEffect(in:isEnabled:body:)](/documentation/swiftui/view/hovereffect(in:isenabled:body:)) modifiers are used to create effects. Use this method when you need to create effects in other contexts.

For example, the following code uses this method and [Hover Effect](/documentation/swiftui/hovereffect) to create a type-erased fade effect:

```swift
HoverEffect(
    .hoverEffect { e, isActive, _ in
        e.opacity(isActive ? 1 : 0)
    }
)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
