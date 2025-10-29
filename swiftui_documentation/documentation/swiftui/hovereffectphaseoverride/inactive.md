---
title: inactive
description: Immediately transition to the inactive phase.
source: https://developer.apple.com/documentation/swiftui/hovereffectphaseoverride/inactive
timestamp: 2025-10-29T00:11:09.599Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectphaseoverride](/documentation/swiftui/hovereffectphaseoverride)

**Type Property**

# inactive

**Available on:** visionOS 26.0+

> Immediately transition to the inactive phase.

```swift
static var inactive: HoverEffectPhaseOverride { get }
```

## Discussion

Applying this override causes an effect to become inactive immediately, regardless of whether the view is hovered or not. The transition will use the animations defined by the effect, but will ignore any delays. The effect remains inactive until this override is removed.

When applied to a group, all effects in the group become inactive as well. Applying overrides to multiple effects in the same group is undefined, due to it not being clear which override should be applied.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
