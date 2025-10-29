---
title: HoverEffectPhaseOverride
description: Options for overriding a hover effect’s current phase.
source: https://developer.apple.com/documentation/swiftui/hovereffectphaseoverride
timestamp: 2025-10-29T00:15:00.276Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# HoverEffectPhaseOverride

**Available on:** visionOS 26.0+

> Options for overriding a hover effect’s current phase.

```swift
struct HoverEffectPhaseOverride
```

## Overview

By default hover effects transition between the active and inactive phases in response to hover events. Use `HoverEffectPhaseOverride` to cause a hover effect to transition between phases based on other criteria.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)

## Type Properties

- [active](/documentation/swiftui/hovereffectphaseoverride/active) Immediately transition to the active phase.
- [inactive](/documentation/swiftui/hovereffectphaseoverride/inactive) Immediately transition to the inactive phase.

## Type Methods

- [activeTemporarily(trigger:)](/documentation/swiftui/hovereffectphaseoverride/activetemporarily(trigger:)) Temporaily transitions to the active phase until all animations finish, and the transition is complete.
- [inactiveTemporarily(trigger:)](/documentation/swiftui/hovereffectphaseoverride/inactivetemporarily(trigger:)) Temporaily transitions to the inactve phase until all animations finish, and the transition is complete.
- [toggled(trigger:)](/documentation/swiftui/hovereffectphaseoverride/toggled(trigger:)) Immediately transition to the opposite of an effect’s current phase.
- [toggledTemporarily(trigger:)](/documentation/swiftui/hovereffectphaseoverride/toggledtemporarily(trigger:)) Temporaily transitions to the opposite of the effect’s current phase at the moment the override is applied.

## Responding to hover events

- [onHover(perform:)](/documentation/swiftui/view/onhover(perform:))
- [onContinuousHover(coordinateSpace:perform:)](/documentation/swiftui/view/oncontinuoushover(coordinatespace:perform:))
- [hoverEffect(_:isEnabled:)](/documentation/swiftui/view/hovereffect(_:isenabled:))
- [hoverEffectDisabled(_:)](/documentation/swiftui/view/hovereffectdisabled(_:))
- [defaultHoverEffect(_:)](/documentation/swiftui/view/defaulthovereffect(_:))
- [isHoverEffectEnabled](/documentation/swiftui/environmentvalues/ishovereffectenabled)
- [HoverPhase](/documentation/swiftui/hoverphase)
- [OrnamentHoverContentEffect](/documentation/swiftui/ornamenthovercontenteffect)
- [OrnamentHoverEffect](/documentation/swiftui/ornamenthovereffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
