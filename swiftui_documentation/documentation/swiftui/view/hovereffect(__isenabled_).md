---
title: hoverEffect(_:isEnabled:)
description: Applies a hover effect to this view.
source: https://developer.apple.com/documentation/swiftui/view/hovereffect(_:isenabled:)
timestamp: 2025-10-29T00:14:49.414Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# hoverEffect(_:isEnabled:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, tvOS 17.0+, visionOS 1.0+

> Applies a hover effect to this view.

```swift
nonisolated func hoverEffect(_ effect: HoverEffect = .automatic, isEnabled: Bool = true) -> some View
```

## Parameters

**effect**

The effect to apply to this view.



**isEnabled**

Whether the effect is enabled or not.



## Return Value

A new view that applies a hover effect to `self`.

## Discussion

By default, [automatic](/documentation/swiftui/hovereffect/automatic) is used. You can control the behavior of the automatic effect with the [defaultHoverEffect(_:)](/documentation/swiftui/view/defaulthovereffect(_:)) modifier.

## Responding to hover events

- [onHover(perform:)](/documentation/swiftui/view/onhover(perform:))
- [onContinuousHover(coordinateSpace:perform:)](/documentation/swiftui/view/oncontinuoushover(coordinatespace:perform:))
- [hoverEffectDisabled(_:)](/documentation/swiftui/view/hovereffectdisabled(_:))
- [defaultHoverEffect(_:)](/documentation/swiftui/view/defaulthovereffect(_:))
- [isHoverEffectEnabled](/documentation/swiftui/environmentvalues/ishovereffectenabled)
- [HoverPhase](/documentation/swiftui/hoverphase)
- [HoverEffectPhaseOverride](/documentation/swiftui/hovereffectphaseoverride)
- [OrnamentHoverContentEffect](/documentation/swiftui/ornamenthovercontenteffect)
- [OrnamentHoverEffect](/documentation/swiftui/ornamenthovereffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
