---
title: interactive(timingCurve:)
description: Creates a new configuration that interactively interpolates the transition’s effect as the view is scrolled into the visible region of the container.
source: https://developer.apple.com/documentation/swiftui/scrolltransitionconfiguration/interactive(timingcurve:)
timestamp: 2025-10-29T00:12:57.808Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrolltransitionconfiguration](/documentation/swiftui/scrolltransitionconfiguration)

**Type Method**

# interactive(timingCurve:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a new configuration that interactively interpolates the transition’s effect as the view is scrolled into the visible region of the container.

```swift
static func interactive(timingCurve: UnitCurve = .easeInOut) -> ScrollTransitionConfiguration
```

## Parameters

**timingCurve**

The curve that adjusts the pace at which the effect is interpolated between phases of the transition. For example, an `.easeIn` curve causes interpolation to begin slowly as the view reaches the edge of the scroll view, then speed up as it reaches the visible threshold. The curve is applied ‘forward’ while the view is appearing, meaning that time zero corresponds to the view being just hidden, and time 1.0 corresponds to the pont at which the view reaches the configuration threshold. This also means that the timing curve is applied in reversed while the view is moving away from the center of the scroll view.



## Return Value

A configuration that interactively interpolates between transition phases based on the current scroll position.

## Getting the configuration

- [identity](/documentation/swiftui/scrolltransitionconfiguration/identity)
- [animated](/documentation/swiftui/scrolltransitionconfiguration/animated)
- [animated(_:)](/documentation/swiftui/scrolltransitionconfiguration/animated(_:))
- [interactive](/documentation/swiftui/scrolltransitionconfiguration/interactive)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
