---
title: scrollTransition(topLeading:bottomTrailing:axis:transition:)
description: Applies the given transition, animating between the phases of the transition as this view appears and disappears within the visible region of the containing scroll view.
source: https://developer.apple.com/documentation/swiftui/view/scrolltransition(topleading:bottomtrailing:axis:transition:)
timestamp: 2025-10-29T00:14:24.712Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# scrollTransition(topLeading:bottomTrailing:axis:transition:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Applies the given transition, animating between the phases of the transition as this view appears and disappears within the visible region of the containing scroll view.

```swift
nonisolated func scrollTransition(topLeading: ScrollTransitionConfiguration, bottomTrailing: ScrollTransitionConfiguration, axis: Axis? = nil, transition: @escaping (EmptyVisualEffect, ScrollTransitionPhase) -> some VisualEffect) -> some View
```

## Parameters

**topLeading**

The configuration that drives the transition when the view is about to appear at the top edge of a vertical scroll view, or the leading edge of a horizont scroll view.



**bottomTrailing**

The configuration that drives the transition when the view is about to appear at the bottom edge of a vertical scroll view, or the trailing edge of a horizont scroll view.



**axis**

The axis of the containing scroll view over which the transition will be applied. The default value of `nil` uses the axis of the innermost containing scroll view, or `.vertical` if the innermost scroll view is scrollable along both axes.



**transition**

The transition to apply.



## Animating scroll transitions

- [scrollTransition(_:axis:transition:)](/documentation/swiftui/view/scrolltransition(_:axis:transition:))
- [ScrollTransitionPhase](/documentation/swiftui/scrolltransitionphase)
- [ScrollTransitionConfiguration](/documentation/swiftui/scrolltransitionconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
