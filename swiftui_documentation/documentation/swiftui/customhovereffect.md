---
title: CustomHoverEffect
description: A type that represents how a view should change when a pointer hovers over a view, or when someone looks at the view.
source: https://developer.apple.com/documentation/swiftui/customhovereffect
timestamp: 2025-10-29T00:10:33.109Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# CustomHoverEffect

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, tvOS 18.0+, visionOS 2.0+

> A type that represents how a view should change when a pointer hovers over a view, or when someone looks at the view.

```swift
protocol CustomHoverEffect
```

## Overview

Custom hover effects apply their inactive values when the effect is inactive, and their active values when the effect is active. For example, the following effect causes a view to be partially transparent when inactive, but animate to fully opaque when active:

```swift
struct FadeInHoverEffect: CustomHoverEffect {
    func body(content: Content) -> some CustomHoverEffect {
        content.hoverEffect { effect, isActive, proxy in
            effect.animation(.easeOut) {
                $0.opacity(isActive ? 1 : 0.5)
            }
        }
    }
}
```

This effect can be applied to a view using the `hoverEffect(_:)` modifier:

```swift
Color.red
    .hoverEffect(FadeInHoverEffect())
```

Hover effects do not affect a view’s layout, and may be applied to a view out-of-process. Therefore an effect’s current phase may not be visible within your app.

## Conforming Types

- [AutomaticHoverEffect](/documentation/swiftui/automatichovereffect)
- [ContentHoverEffect](/documentation/swiftui/contenthovereffect)
- [EmptyHoverEffect](/documentation/swiftui/emptyhovereffect)
- [GroupHoverEffect](/documentation/swiftui/grouphovereffect)
- [HighlightHoverEffect](/documentation/swiftui/highlighthovereffect)
- [HoverEffect](/documentation/swiftui/hovereffect)
- [LiftHoverEffect](/documentation/swiftui/lifthovereffect)
- [ModifiedContent](/documentation/swiftui/modifiedcontent)
- [OrnamentHoverContentEffect](/documentation/swiftui/ornamenthovercontenteffect)
- [OrnamentHoverEffect](/documentation/swiftui/ornamenthovereffect)

## Getting built-in hover effects

- [automatic](/documentation/swiftui/customhovereffect/automatic) The default hover effect based on the surrounding context.
- [empty](/documentation/swiftui/customhovereffect/empty) An effect that applies no changes when hovered.
- [highlight](/documentation/swiftui/customhovereffect/highlight) A hover effect that highlights views using a light source to indicate position.
- [lift](/documentation/swiftui/customhovereffect/lift) A hover effect that slides the pointer under the view and disappears as the view scales up and gains a shadow.

## Creating custom hover effects

- [hoverEffect(_:in:isEnabled:)](/documentation/swiftui/customhovereffect/hovereffect(_:in:isenabled:)) Applies this effect in parallel with the given .
- [hoverEffectDisabled(_:)](/documentation/swiftui/customhovereffect/hovereffectdisabled(_:)) Disables this hover effect.

## Supporting types

- [AutomaticHoverEffect](/documentation/swiftui/automatichovereffect) The default hover effect based on the surrounding context.
- [EmptyHoverEffect](/documentation/swiftui/emptyhovereffect) A base hover effect used to build additional effects.
- [HighlightHoverEffect](/documentation/swiftui/highlighthovereffect) A hover effect that highlights views using a light source to indicate position.
- [LiftHoverEffect](/documentation/swiftui/lifthovereffect) A hover effect that slides the pointer under the view and disappears as the view scales up and gains a shadow.

## Associated Types

- [Body](/documentation/swiftui/customhovereffect/body) The type of effect representing the body of this effect. When you create a custom effect, Swift infers this type from your implementation of the required  method.

## Instance Methods

- [body(content:)](/documentation/swiftui/customhovereffect/body(content:)) Defines the effect produced by this effect.
- [hoverEffect(in:isEnabled:body:)](/documentation/swiftui/customhovereffect/hovereffect(in:isenabled:body:)-swift.method) Applies a hover effect based on the current phase.
- [hoverEffectGroup(_:)](/documentation/swiftui/customhovereffect/hovereffectgroup(_:)-swift.method) Activates this effect as part of an effect group.
- [hoverEffectGroup(id:in:behavior:)](/documentation/swiftui/customhovereffect/hovereffectgroup(id:in:behavior:)-swift.method) Activates this effect as part of an effect group.
- [hoverEffectPhaseOverride(_:)](/documentation/swiftui/customhovereffect/hovereffectphaseoverride(_:)) Returns a new effect with the given  applied to this effect.

## Type Aliases

- [CustomHoverEffect.Content](/documentation/swiftui/customhovereffect/content) The content effect type passed to .

## Type Methods

- [hoverEffect(in:isEnabled:body:)](/documentation/swiftui/customhovereffect/hovereffect(in:isenabled:body:)-swift.type.method) Creates a hover effect that applies effects to a view using the given closure.
- [hoverEffectGroup(_:)](/documentation/swiftui/customhovereffect/hovereffectgroup(_:)-swift.type.method) Creates an effect that activates a named group of effects.
- [hoverEffectGroup(id:in:behavior:)](/documentation/swiftui/customhovereffect/hovereffectgroup(id:in:behavior:)-swift.type.method) Creates an effect that activates a named group of effects.
- [ornament(attachmentAnchor:contentAlignment:ornament:)](/documentation/swiftui/customhovereffect/ornament(attachmentanchor:contentalignment:ornament:)) Presents an ornament on hover.
- [ornament(attachmentAnchor:contentAlignment:ornament:effect:)](/documentation/swiftui/customhovereffect/ornament(attachmentanchor:contentalignment:ornament:effect:)) Presents an ornament on hover.

## Changing view appearance for hover events

- [hoverEffect(_:)](/documentation/swiftui/view/hovereffect(_:))
- [HoverEffect](/documentation/swiftui/hovereffect)
- [hoverEffect(_:in:isEnabled:)](/documentation/swiftui/view/hovereffect(_:in:isenabled:))
- [hoverEffect(in:isEnabled:body:)](/documentation/swiftui/view/hovereffect(in:isenabled:body:))
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
