---
title: preservesGroup
description: Preserves the current phase of the group.
source: https://developer.apple.com/documentation/swiftui/hovereffectgroup/behavior/preservesgroup
timestamp: 2025-10-29T00:12:11.284Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectgroup](/documentation/swiftui/hovereffectgroup) › [behavior](/documentation/swiftui/hovereffectgroup/behavior)

**Type Property**

# preservesGroup

**Available on:** visionOS 26.0+

> Preserves the current phase of the group.

```swift
static let preservesGroup: HoverEffectGroup.Behavior
```

## Discussion

Use this behavior when an effect should not activate other effects in a group, unless the group already active. This is useful for describing which parts of a view should trigger an effect, while allowing other areas to simply prevent the effect from ending.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
