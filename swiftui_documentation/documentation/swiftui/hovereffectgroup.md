---
title: HoverEffectGroup
description: Describes a grouping of effects that activate together.
source: https://developer.apple.com/documentation/swiftui/hovereffectgroup
timestamp: 2025-10-29T00:13:05.983Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# HoverEffectGroup

**Available on:** visionOS 2.0+

> Describes a grouping of effects that activate together.

```swift
struct HoverEffectGroup
```

## Overview

Use [Hover Effect Group](/documentation/swiftui/hovereffectgroup) to apply effects to multiple views in concert.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Structures

- [HoverEffectGroup.Behavior](/documentation/swiftui/hovereffectgroup/behavior) Describes the behavior of an effect in a group.

## Initializers

- [init(_:behavior:)](/documentation/swiftui/hovereffectgroup/init(_:behavior:)) Creates a new  from a .
- [init(id:in:behavior:)](/documentation/swiftui/hovereffectgroup/init(id:in:behavior:)) Creates a new .

## Instance Methods

- [behavior(_:)](/documentation/swiftui/hovereffectgroup/behavior(_:)) Returns a new version of  with the given .

## Type Properties

- [systemOverlays](/documentation/swiftui/hovereffectgroup/systemoverlays) A  that becomes active when system overlays are visible.

## Changing view appearance for hover events

- [hoverEffect(_:)](/documentation/swiftui/view/hovereffect(_:))
- [HoverEffect](/documentation/swiftui/hovereffect)
- [hoverEffect(_:in:isEnabled:)](/documentation/swiftui/view/hovereffect(_:in:isenabled:))
- [hoverEffect(in:isEnabled:body:)](/documentation/swiftui/view/hovereffect(in:isenabled:body:))
- [CustomHoverEffect](/documentation/swiftui/customhovereffect)
- [ContentHoverEffect](/documentation/swiftui/contenthovereffect)
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
