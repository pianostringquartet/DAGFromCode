---
title: ScrollPhase.tracking
description: The tracking phase where the scroll view is tracking a potential scroll by the user but the user hasn’t started a scroll.
source: https://developer.apple.com/documentation/swiftui/scrollphase/tracking
timestamp: 2025-10-29T00:11:40.765Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollphase](/documentation/swiftui/scrollphase)

**Case**

# ScrollPhase.tracking

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The tracking phase where the scroll view is tracking a potential scroll by the user but the user hasn’t started a scroll.

```swift
case tracking
```

## Discussion

For example, on iOS, the user may start touching content inside of the scroll view. Until the user moves their finger the scroll view would be tracking the finger. Not all platforms or kinds of scroll may trigger this phase.

## Getting scroll gesture states

- [ScrollPhase.animating](/documentation/swiftui/scrollphase/animating)
- [ScrollPhase.decelerating](/documentation/swiftui/scrollphase/decelerating)
- [ScrollPhase.idle](/documentation/swiftui/scrollphase/idle)
- [ScrollPhase.interacting](/documentation/swiftui/scrollphase/interacting)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
