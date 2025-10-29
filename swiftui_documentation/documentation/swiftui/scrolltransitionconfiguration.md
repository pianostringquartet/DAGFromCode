---
title: ScrollTransitionConfiguration
description: The configuration of a scroll transition that controls how a transition is applied as a view is scrolled through the visible region of a containing scroll view or other container.
source: https://developer.apple.com/documentation/swiftui/scrolltransitionconfiguration
timestamp: 2025-10-29T00:14:02.121Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ScrollTransitionConfiguration

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The configuration of a scroll transition that controls how a transition is applied as a view is scrolled through the visible region of a containing scroll view or other container.

```swift
struct ScrollTransitionConfiguration
```

## Getting the configuration

- [identity](/documentation/swiftui/scrolltransitionconfiguration/identity) Creates a new configuration that does not change the appearance of the view.
- [animated](/documentation/swiftui/scrolltransitionconfiguration/animated) Creates a new configuration that discretely animates the transition when the view becomes visible.
- [animated(_:)](/documentation/swiftui/scrolltransitionconfiguration/animated(_:)) Creates a new configuration that discretely animates the transition when the view becomes visible.
- [interactive](/documentation/swiftui/scrolltransitionconfiguration/interactive) Creates a new configuration that interactively interpolates the transition’s effect as the view is scrolled into the visible region of the container.
- [interactive(timingCurve:)](/documentation/swiftui/scrolltransitionconfiguration/interactive(timingcurve:)) Creates a new configuration that interactively interpolates the transition’s effect as the view is scrolled into the visible region of the container.

## Accessing the configuration

- [animation(_:)](/documentation/swiftui/scrolltransitionconfiguration/animation(_:)) Sets the animation with which the transition will be applied.
- [threshold(_:)](/documentation/swiftui/scrolltransitionconfiguration/threshold(_:)) Sets the threshold at which the view will be considered fully visible.
- [ScrollTransitionConfiguration.Threshold](/documentation/swiftui/scrolltransitionconfiguration/threshold) Describes a specific point in the progression of a target view within a container from hidden (fully outside the container) to visible.

## Animating scroll transitions

- [scrollTransition(_:axis:transition:)](/documentation/swiftui/view/scrolltransition(_:axis:transition:))
- [scrollTransition(topLeading:bottomTrailing:axis:transition:)](/documentation/swiftui/view/scrolltransition(topleading:bottomtrailing:axis:transition:))
- [ScrollTransitionPhase](/documentation/swiftui/scrolltransitionphase)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
