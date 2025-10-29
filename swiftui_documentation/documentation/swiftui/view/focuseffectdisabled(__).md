---
title: focusEffectDisabled(_:)
description: Adds a condition that controls whether this view can display focus effects, such as a default focus ring or hover effect.
source: https://developer.apple.com/documentation/swiftui/view/focuseffectdisabled(_:)
timestamp: 2025-10-29T00:09:58.951Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# focusEffectDisabled(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Adds a condition that controls whether this view can display focus effects, such as a default focus ring or hover effect.

```swift
nonisolated func focusEffectDisabled(_ disabled: Bool = true) -> some View
```

## Parameters

**disabled**

A Boolean value that determines whether this view can display focus effects.



## Return Value

A view that controls whether focus effects can be displayed in this view.

## Discussion

The higher views in a view hierarchy can override the value you set on this view. In the following example, the button does not display a focus effect because the outer `focusEffectDisabled(_:)` modifier overrides the inner one:

```swift
HStack {
    Button("Press") {}
        .focusEffectDisabled(false)
}
.focusEffectDisabled(true)
```

## Configuring effects

- [isFocusEffectEnabled](/documentation/swiftui/environmentvalues/isfocuseffectenabled)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
