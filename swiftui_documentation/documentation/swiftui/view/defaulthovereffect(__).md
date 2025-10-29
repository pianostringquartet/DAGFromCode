---
title: defaultHoverEffect(_:)
description: Sets the default hover effect to use for views within this view.
source: https://developer.apple.com/documentation/swiftui/view/defaulthovereffect(_:)
timestamp: 2025-10-29T00:15:11.547Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# defaultHoverEffect(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, tvOS 17.0+, visionOS 1.0+

> Sets the default hover effect to use for views within this view.

```swift
nonisolated func defaultHoverEffect(_ effect: HoverEffect?) -> some View
```

## Parameters

**effect**

The default hover effect to use for views within this view.



## Return Value

A view that uses this effect as the default hover effect.

## Discussion

Use this modifier to set a specific hover effect for all views with the [hoverEffect(_:)](/documentation/swiftui/view/hovereffect(_:)) modifier applied within a view. The default effect is typically used when no [Hover Effect](/documentation/swiftui/hovereffect) was provided or if [automatic](/documentation/swiftui/hovereffect/automatic) is specified.

For example, this view uses [highlight](/documentation/swiftui/hovereffect/highlight) for both the red and green Color views:

```swift
HStack {
    Color.red.hoverEffect()
    Color.green.hoverEffect()
}
.defaultHoverEffect(.highlight)
```

This also works for customizing the default hover effect in views like [Button](/documentation/swiftui/button)s when using a SwiftUI-defined style like `ButtonStyle/bordered`, which can provide a hover effect by default. For example, this view replaces the hover effect for a [Button](/documentation/swiftui/button) with [highlight](/documentation/swiftui/hovereffect/highlight):

```swift
Button("Next") {}
    // perform action
}
.buttonStyle(.bordered)
.defaultHoverEffect(.highlight)
```

Use a `nil` effect to indicate that the default hover effect should not be modified.

## Responding to hover events

- [onHover(perform:)](/documentation/swiftui/view/onhover(perform:))
- [onContinuousHover(coordinateSpace:perform:)](/documentation/swiftui/view/oncontinuoushover(coordinatespace:perform:))
- [hoverEffect(_:isEnabled:)](/documentation/swiftui/view/hovereffect(_:isenabled:))
- [hoverEffectDisabled(_:)](/documentation/swiftui/view/hovereffectdisabled(_:))
- [isHoverEffectEnabled](/documentation/swiftui/environmentvalues/ishovereffectenabled)
- [HoverPhase](/documentation/swiftui/hoverphase)
- [HoverEffectPhaseOverride](/documentation/swiftui/hovereffectphaseoverride)
- [OrnamentHoverContentEffect](/documentation/swiftui/ornamenthovercontenteffect)
- [OrnamentHoverEffect](/documentation/swiftui/ornamenthovereffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
