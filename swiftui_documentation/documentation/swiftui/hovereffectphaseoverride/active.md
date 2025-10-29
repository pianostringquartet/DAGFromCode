---
title: active
description: Immediately transition to the active phase.
source: https://developer.apple.com/documentation/swiftui/hovereffectphaseoverride/active
timestamp: 2025-10-29T00:10:35.838Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectphaseoverride](/documentation/swiftui/hovereffectphaseoverride)

**Type Property**

# active

**Available on:** visionOS 26.0+

> Immediately transition to the active phase.

```swift
static var active: HoverEffectPhaseOverride { get }
```

## Discussion

Applying this override causes a hover effect to become active immediately, regardless of whether the view is hovered or not. The transition will use the animations defined by the effect, but will ignore any delays. The effect remains active until this override is removed.

When applied to a group, all effects in the group become active as well. Applying overrides to multiple effects in the same group is undefined, due to it not being clear which override should be applied.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
