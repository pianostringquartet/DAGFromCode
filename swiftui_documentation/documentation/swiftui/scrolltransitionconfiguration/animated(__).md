---
title: animated(_:)
description: Creates a new configuration that discretely animates the transition when the view becomes visible.
source: https://developer.apple.com/documentation/swiftui/scrolltransitionconfiguration/animated(_:)
timestamp: 2025-10-29T00:11:20.067Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrolltransitionconfiguration](/documentation/swiftui/scrolltransitionconfiguration)

**Type Method**

# animated(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a new configuration that discretely animates the transition when the view becomes visible.

```swift
static func animated(_ animation: Animation = .default) -> ScrollTransitionConfiguration
```

## Parameters

**animation**

The animation to use when transitioning between states.



## Return Value

A configuration that discretely animates between transition phases.

## Discussion

Unlike the interactive configuration, the transition isn’t interpolated as the scroll view is scrolled. Instead, the transition phase only changes once the threshold has been reached, at which time the given animation is used to animate to the new phase.

## Getting the configuration

- [identity](/documentation/swiftui/scrolltransitionconfiguration/identity)
- [animated](/documentation/swiftui/scrolltransitionconfiguration/animated)
- [interactive](/documentation/swiftui/scrolltransitionconfiguration/interactive)
- [interactive(timingCurve:)](/documentation/swiftui/scrolltransitionconfiguration/interactive(timingcurve:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
