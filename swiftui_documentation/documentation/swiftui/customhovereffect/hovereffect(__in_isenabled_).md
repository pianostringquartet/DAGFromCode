---
title: hoverEffect(_:in:isEnabled:)
description: Applies this effect in parallel with the given .
source: https://developer.apple.com/documentation/swiftui/customhovereffect/hovereffect(_:in:isenabled:)
timestamp: 2025-10-29T00:10:17.450Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customhovereffect](/documentation/swiftui/customhovereffect)

**Instance Method**

# hoverEffect(_:in:isEnabled:)

**Available on:** visionOS 2.0+

> Applies this effect in parallel with the given .

```swift
func hoverEffect(_ effect: some CustomHoverEffect, in group: HoverEffectGroup? = nil, isEnabled: Bool = true) -> some CustomHoverEffect
```

## Parameters

**effect**

A [Custom Hover Effect](/documentation/swiftui/customhovereffect) to combine with this effect.



**group**

An optional [Hover Effect Group](/documentation/swiftui/hovereffectgroup) to add this effect to.



**isEnabled**

Whether `effect` is enabled or not.



## Discussion

Use `hoverEffect(_:)` to combine two effects into a single effect that applies both effects in parallel. Modifiers like [hoverEffectDisabled(_:)](/documentation/swiftui/customhovereffect/hovereffectdisabled(_:)) applied to `effect` will not apply to this effect.

For example, in the following effect only the `ScaleUpEffect` is disabled, since modifiers applied to that effect are applied independently.

```swift
struct FadeAndScaleEffect: CustomHoverEffect {
    @Environment(\.accessibilityReduceMotion) var accessibilityReduceMotion
    func body(content: Content) -> some CustomHoverEffect {
        content
            .hoverEffect { effect, isActive, _ in
                effect.opacity(isActive ? 1 : 0.9)
            }
            .hoverEffect(
                ScaleUpEffect().hoverEffectDisabled(accessibilityReduceMotion)
            )
    }
}

struct ScaleUpEffect: CustomHoverEffect {
    func body(content: Content) -> some CustomHoverEffect {
        content.hoverEffect { effect, isActive, _ in
            effect.scaleEffect(isActive ? 1.05 : 1.0)
        }
    }
}
```

- Returns a new effect that applies both effects in parallel.

## Creating custom hover effects

- [hoverEffectDisabled(_:)](/documentation/swiftui/customhovereffect/hovereffectdisabled(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
