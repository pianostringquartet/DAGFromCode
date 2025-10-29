---
title: scrollTransition(_:axis:transition:)
description: Applies the given transition, animating between the phases of the transition as this view appears and disappears within the visible region of the containing scroll view.
source: https://developer.apple.com/documentation/swiftui/view/scrolltransition(_:axis:transition:)
timestamp: 2025-10-29T00:13:06.198Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# scrollTransition(_:axis:transition:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Applies the given transition, animating between the phases of the transition as this view appears and disappears within the visible region of the containing scroll view.

```swift
nonisolated func scrollTransition(_ configuration: ScrollTransitionConfiguration = .interactive, axis: Axis? = nil, transition: @escaping (EmptyVisualEffect, ScrollTransitionPhase) -> some VisualEffect) -> some View
```

## Parameters

**configuration**

The configuration controlling how the transition will be applied. The configuration will be applied both while the view is coming into view and while it is disappearing (the transition is symmetrical).



**axis**

The axis of the containing scroll view over which the transition will be applied. The default value of `nil` uses the axis of the innermost containing scroll view, or `.vertical` if the innermost scroll view is scrollable along both axes.



**transition**

A closure that applies visual effects as a function of the provided phase.



## Animating scroll transitions

- [scrollTransition(topLeading:bottomTrailing:axis:transition:)](/documentation/swiftui/view/scrolltransition(topleading:bottomtrailing:axis:transition:))
- [ScrollTransitionPhase](/documentation/swiftui/scrolltransitionphase)
- [ScrollTransitionConfiguration](/documentation/swiftui/scrolltransitionconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
