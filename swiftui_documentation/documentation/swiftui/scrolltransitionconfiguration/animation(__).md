---
title: animation(_:)
description: Sets the animation with which the transition will be applied.
source: https://developer.apple.com/documentation/swiftui/scrolltransitionconfiguration/animation(_:)
timestamp: 2025-10-29T00:11:57.694Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrolltransitionconfiguration](/documentation/swiftui/scrolltransitionconfiguration)

**Instance Method**

# animation(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Sets the animation with which the transition will be applied.

```swift
func animation(_ animation: Animation) -> ScrollTransitionConfiguration
```

## Parameters

**animation**

An animation that will be used to apply the transition to the view.



## Return Value

A copy of this configuration with the animation set to the given value.

## Discussion

If the transition is interactive, the given animation will be used to animate the effect toward the current interpolated value, causing the effect to lag behind the current scroll position.

## Accessing the configuration

- [threshold(_:)](/documentation/swiftui/scrolltransitionconfiguration/threshold(_:))
- [ScrollTransitionConfiguration.Threshold](/documentation/swiftui/scrolltransitionconfiguration/threshold)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
