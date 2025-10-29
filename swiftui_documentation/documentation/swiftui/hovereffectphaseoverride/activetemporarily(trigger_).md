---
title: activeTemporarily(trigger:)
description: Temporaily transitions to the active phase until all animations finish, and the transition is complete.
source: https://developer.apple.com/documentation/swiftui/hovereffectphaseoverride/activetemporarily(trigger:)
timestamp: 2025-10-29T00:13:07.346Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectphaseoverride](/documentation/swiftui/hovereffectphaseoverride)

**Type Method**

# activeTemporarily(trigger:)

**Available on:** visionOS 26.0+

> Temporaily transitions to the active phase until all animations finish, and the transition is complete.

```swift
static func activeTemporarily(trigger: some Equatable) -> HoverEffectPhaseOverride
```

## Parameters

**trigger**

A value to observe for changes. The override will be reapplied whenever this value changes.



## Discussion

Use `activeTemporarily(trigger:)` to override an effect’s phase until it fully transitions to its active phase. The transition will use the animations defined by the effect, but will ignore any delays.

When the override expires, the effect will respond to hover events again. If the view is hovered, the effect will remain in the active phase. Otherwise it will begin transitioning to the inactive phase, honoring any delays defined on the effect.

When applied to a group, all effects in the group become active as well. Applying overrides to multiple effects in the same group is undefined, due to it not being clear which override should be applied.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
