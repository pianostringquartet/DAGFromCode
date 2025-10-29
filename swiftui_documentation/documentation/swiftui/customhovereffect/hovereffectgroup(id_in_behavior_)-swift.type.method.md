---
title: hoverEffectGroup(id:in:behavior:)
description: Creates an effect that activates a named group of effects.
source: https://developer.apple.com/documentation/swiftui/customhovereffect/hovereffectgroup(id:in:behavior:)-swift.type.method
timestamp: 2025-10-29T00:29:45.846Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customhovereffect](/documentation/swiftui/customhovereffect)

**Type Method**

# hoverEffectGroup(id:in:behavior:)

**Available on:** visionOS 26.0+

> Creates an effect that activates a named group of effects.

```swift
static func hoverEffectGroup(id: String? = nil, in namespace: Namespace.ID, behavior: HoverEffectGroup.Behavior = .activatesGroup) -> GroupHoverEffect
```

## Parameters

**id**

An optional id to give the group. If provided, the group will be uniquely identified by combining the id and the namespace.



**namespace**

The namespace that identifies the group. If `nil`, this modifier has no effect.



**behavior**

How the effect will behave relative to other effects in the group.



## Return Value

A new effect that activates the given effect group.

## Discussion

The effect group is uniquely identified by combining the `id` and `namespace` parameters. If an `id` is not provided, the effect will be identified by the `namespace` alone. Providing an `id` is useful when creating effects that use multiple, closely-related groups.

The default behavior of an effect is to activate the effect group when hovered. The `behavior` parameter can be used to choose alternative behaviors. See [Behavior](/documentation/swiftui/hovereffectgroup/behavior) for all possible behaviors.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
