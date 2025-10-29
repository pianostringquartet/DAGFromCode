---
title: TransitionPhase.identity
description: The transition is being applied to a view that is in the view hierarchy.
source: https://developer.apple.com/documentation/swiftui/transitionphase/identity
timestamp: 2025-10-29T00:10:24.755Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [transitionphase](/documentation/swiftui/transitionphase)

**Case**

# TransitionPhase.identity

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The transition is being applied to a view that is in the view hierarchy.

```swift
case identity
```

## Discussion

In this phase, a transition should show its steady state appearance, which will generally not make any visual change to the view.

## Getting the phase

- [TransitionPhase.willAppear](/documentation/swiftui/transitionphase/willappear)
- [TransitionPhase.didDisappear](/documentation/swiftui/transitionphase/diddisappear)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
