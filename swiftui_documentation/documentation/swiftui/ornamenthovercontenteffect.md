---
title: OrnamentHoverContentEffect
description: Presents an ornament on hover using a custom effect.
source: https://developer.apple.com/documentation/swiftui/ornamenthovercontenteffect
timestamp: 2025-10-29T00:10:17.897Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# OrnamentHoverContentEffect

**Available on:** visionOS 26.0+

> Presents an ornament on hover using a custom effect.

```swift
struct OrnamentHoverContentEffect<OrnamentView, OrnamentContentEffect> where OrnamentView : View, OrnamentContentEffect : HoverEffectContent
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
- [OrnamentHoverEffect](/documentation/swiftui/ornamenthovereffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
