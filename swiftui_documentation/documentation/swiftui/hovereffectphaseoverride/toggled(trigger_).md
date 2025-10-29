---
title: toggled(trigger:)
description: Immediately transition to the opposite of an effect’s current phase.
source: https://developer.apple.com/documentation/swiftui/hovereffectphaseoverride/toggled(trigger:)
timestamp: 2025-10-29T00:09:51.773Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectphaseoverride](/documentation/swiftui/hovereffectphaseoverride)

**Type Method**

# toggled(trigger:)

**Available on:** visionOS 26.0+

> Immediately transition to the opposite of an effect’s current phase.

```swift
static func toggled(trigger: some Equatable) -> HoverEffectPhaseOverride
```

## Parameters

**trigger**

A value to observe for changes. The override will be reapplied whenever this value changes.



## Discussion

Applying this override causes an effect to transition to the opposite of its current phase at the moment the override is applied. If the effect is `active`, this is equivalent to applying the `inactive` override (and vice versa). Hover effects may be applied outside the app process, so this override allows the current phase to be toggled without needing to know the current phase.

The `toggled` override changes the effect’s phase when first applied, and also whenever the given `Equatable` trigger value changes. This allows the effect’s phase to be toggled repeatedly.

When applied to a group, all effects in the group will be affected (just like the `active` or `inactive` overrides). Applying overrides to multiple effects in the same group is undefined, due to it not being clear which override should be applied.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
