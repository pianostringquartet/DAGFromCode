---
title: OrnamentHoverEffect
description: Presents an ornament on hover.
source: https://developer.apple.com/documentation/swiftui/ornamenthovereffect
timestamp: 2025-10-29T00:15:26.552Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# OrnamentHoverEffect

**Available on:** visionOS 26.0+

> Presents an ornament on hover.

```swift
struct OrnamentHoverEffect<OrnamentView> where OrnamentView : View
```

## Overview

You don’t use this directly. Use `CustomHoverEffect.ornament` to create ornament effects instead.

## Conforms To

- [CustomHoverEffect](/documentation/swiftui/customhovereffect)

## Responding to hover events

- [onHover(perform:)](/documentation/swiftui/view/onhover(perform:))
- [onContinuousHover(coordinateSpace:perform:)](/documentation/swiftui/view/oncontinuoushover(coordinatespace:perform:))
- [hoverEffect(_:isEnabled:)](/documentation/swiftui/view/hovereffect(_:isenabled:))
- [hoverEffectDisabled(_:)](/documentation/swiftui/view/hovereffectdisabled(_:))
- [defaultHoverEffect(_:)](/documentation/swiftui/view/defaulthovereffect(_:))
- [isHoverEffectEnabled](/documentation/swiftui/environmentvalues/ishovereffectenabled)
- [HoverPhase](/documentation/swiftui/hoverphase)
- [HoverEffectPhaseOverride](/documentation/swiftui/hovereffectphaseoverride)
- [OrnamentHoverContentEffect](/documentation/swiftui/ornamenthovercontenteffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
