---
title: hoverEffectPhaseOverride(_:)
description: Returns a new effect with the given  applied to this effect.
source: https://developer.apple.com/documentation/swiftui/customhovereffect/hovereffectphaseoverride(_:)
timestamp: 2025-10-29T00:09:21.829Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customhovereffect](/documentation/swiftui/customhovereffect)

**Instance Method**

# hoverEffectPhaseOverride(_:)

**Available on:** visionOS 26.0+

> Returns a new effect with the given  applied to this effect.

```swift
func hoverEffectPhaseOverride(_ override: HoverEffectPhaseOverride?) -> some CustomHoverEffect
```

## Parameters

**override**

The override to apply to the hover effect’s current phase. If `nil` is provided, this modifier has no effect.



## Return Value

A new effect with the given override applied.

## Discussion

For example, the following effect will *always* have an opacity of 1.0 since the override forces the effect to always be active:

```swift
Color.red
    .hoverEffect(
        .empty
        .hoverEffect { e, isActive, _ in
            e.opacity(isActive ? 1 : 0.5)
        }
        .hoverEffectPhaseOverride(.active)
    )
```

When applied to a `hoverEffectGroup` the override applies to all effects in the group. Both views in the following example will have an opacity of 1.0:

```swift
HStack {
    Color.red
        .hoverEffect(
            .empty
            .hoverEffect(in: hoverGroup) { e, isActive, _ in
                e.opacity(isActive ? 1 : 0.5)
            }
            .hoverEffectPhaseOverride(.active)
        )
    Color.red
        .hoverEffect(in: hoverGroup) { e, isActive, _ in
            e.opacity(isActive ? 1 : 0.5)
        }
```

}

Applying overrides to multiple effects in the same group is undefined, due to it not being clear which override should be applied. Choose one effect in the group to act as the source effect (as in the example above), or use a separate `.empty` effect to apply the override:

```swift
Color.red
    .hoverEffect(
        // apply the override to an empty effect
        .empty
        .hoverEffectGroup(hoverGroup)
        .hoverEffectPhaseOverride(.active)
        // prevent hovering `Color.red` from triggering the group
        .hoverEffectDisabled(true)
    )
    .overlay {
        Rectangle()
            .strokeBorder()
            .hoverEffect(in: hoverGroup) { e, isActive, _ in
                e.opacity(isActive ? 1 : 0.5)
            }
    }
    .padding()
    .background {
        Color.blue
            .hoverEffect(in: hoverGroup) { e, isActive, _ in
                e.opacity(isActive ? 1 : 0.5)
            }
    }
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
