---
title: animation(_:body:)
description: Applies the given  to all effects within the  closure.
source: https://developer.apple.com/documentation/swiftui/hovereffectcontent/animation(_:body:)
timestamp: 2025-10-29T00:14:49.384Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectcontent](/documentation/swiftui/hovereffectcontent)

**Instance Method**

# animation(_:body:)

**Available on:** visionOS 2.0+

> Applies the given  to all effects within the  closure.

```swift
func animation(_ animation: Animation?, body: (EmptyHoverEffectContent) -> some HoverEffectContent) -> some HoverEffectContent
```

## Parameters

**animation**

The animation to use for the effect transition. If `nil` the effects will not animate.



**body**

A block used to specify the effects to animate. You must use the provided content to build the effects, or behavior is undefined.



## Return Value

A new effect that combines the effects defined in `body` with

## Discussion

Any effects defined within the `body` closure will be combined with this effect, and the `animation` will used to animate those effects’ changes when the effects are applied.

In the following example, the view will use the `.easeIn` animation when activating the effect, but `.easeOut` when the effect becomes inactive:

```swift
Color.red
    .hoverEffect { effect, isActive, proxy in
        effect.animation(isActive ? .easeIn : .easeOut) {
            $0.opacity(isActive ? 1 : 0.5)
        }
    }
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
