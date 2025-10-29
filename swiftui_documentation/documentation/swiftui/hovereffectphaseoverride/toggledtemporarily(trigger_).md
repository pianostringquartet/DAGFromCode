---
title: toggledTemporarily(trigger:)
description: Temporaily transitions to the opposite of the effect’s current phase at the moment the override is applied.
source: https://developer.apple.com/documentation/swiftui/hovereffectphaseoverride/toggledtemporarily(trigger:)
timestamp: 2025-10-29T00:09:13.486Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectphaseoverride](/documentation/swiftui/hovereffectphaseoverride)

**Type Method**

# toggledTemporarily(trigger:)

**Available on:** visionOS 26.0+

> Temporaily transitions to the opposite of the effect’s current phase at the moment the override is applied.

```swift
static func toggledTemporarily(trigger: some Equatable) -> HoverEffectPhaseOverride
```

## Parameters

**trigger**

A value to observe for changes. The override will be reapplied whenever this value changes.



## Discussion

Use `toggledTemporarily(trigger:)` to toggle an effect’s current phase until it fully transitions to its new phase. The transition will use the animations defined by the effect, but will ignore any delays.

When the override expires, the effect will respond to hover events again. If the view is hovered, the effect will transition to it’s active phase, otherwise its inactive phase.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
