---
title: hoverEffectDisabled(_:)
description: Disables this hover effect.
source: https://developer.apple.com/documentation/swiftui/customhovereffect/hovereffectdisabled(_:)
timestamp: 2025-10-29T00:13:43.450Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customhovereffect](/documentation/swiftui/customhovereffect)

**Instance Method**

# hoverEffectDisabled(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, tvOS 18.0+, visionOS 2.0+

> Disables this hover effect.

```swift
func hoverEffectDisabled(_ isDisabled: Bool = true) -> some CustomHoverEffect
```

## Parameters

**isDisabled**

A Boolean value that determines whether the hover effect is disabled or not. Specifying `true` takes precedence over `false`. Default: `true`.



## Return Value

A conditionally disabled hover effect.

## Discussion

Use `hoverEffectDisabled(_:)` to prevent a hover effect from becoming active. When an effect is disabled, all contained effects are also disabled and cannot be re-enabled.

In the following example, the scale effect is disabled if the `accessibilityReduceMotion` setting is enabled:

```swift
struct ScaleAndFadeEffect: CustomHoverEffect {
    @Environment(\.accessibilityReduceMotion) var accessibilityReduceMotion
    func body(content: Content) -> some CustomHoverEffect {
        content.hoverEffect { effect, isActive, _ in
            effect.scaleEffect(!isActive ? 0.95 : 1.05)
        }
        .hoverEffectDisabled(accessibilityReduceMotion)
        .hoverEffect { effect, isActive, _ in
            effect.opacity(!isActive ? 0.9 : 1)
        }
    }
}
```

## Creating custom hover effects

- [hoverEffect(_:in:isEnabled:)](/documentation/swiftui/customhovereffect/hovereffect(_:in:isenabled:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
