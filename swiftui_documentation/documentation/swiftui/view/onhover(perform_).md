---
title: onHover(perform:)
description: Adds an action to perform when the user moves the pointer over or away from the view’s frame.
source: https://developer.apple.com/documentation/swiftui/view/onhover(perform:)
timestamp: 2025-10-29T00:10:42.109Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onHover(perform:)

**Available on:** iOS 13.4+, iPadOS 13.4+, Mac Catalyst 13.4+, macOS 10.15+, visionOS 1.0+

> Adds an action to perform when the user moves the pointer over or away from the view’s frame.

```swift
nonisolated func onHover(perform action: @escaping (Bool) -> Void) -> some View
```

## Parameters

**action**

The action to perform whenever the pointer enters or exits this view’s frame. If the pointer is in the view’s frame, the `action` closure passes `true` as a parameter; otherwise, `false`.



## Return Value

A view that triggers `action` when the pointer enters or exits this view’s frame.

## Discussion

Calling this method defines a region for detecting pointer movement with the size and position of this view.

## Responding to hover events

- [onContinuousHover(coordinateSpace:perform:)](/documentation/swiftui/view/oncontinuoushover(coordinatespace:perform:))
- [hoverEffect(_:isEnabled:)](/documentation/swiftui/view/hovereffect(_:isenabled:))
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
