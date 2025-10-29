---
title: ScrollPhase.animating
description: The animating phase where the scroll view is animating towards a final target.
source: https://developer.apple.com/documentation/swiftui/scrollphase/animating
timestamp: 2025-10-29T00:11:20.974Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollphase](/documentation/swiftui/scrollphase)

**Case**

# ScrollPhase.animating

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The animating phase where the scroll view is animating towards a final target.

```swift
case animating
```

## Discussion

This phase is the result of a programmatic scroll when using a [Scroll View Reader](/documentation/swiftui/scrollviewreader) or [scrollPosition(id:anchor:)](/documentation/swiftui/view/scrollposition(id:anchor:)) modifier.

SwiftUI provides you a value of this type when using the [onScrollPhaseChange(_:)](/documentation/swiftui/view/onscrollphasechange(_:)) modifier with a scrollable view like [Scroll View](/documentation/swiftui/scrollview) or [List](/documentation/swiftui/list).

## Getting scroll gesture states

- [ScrollPhase.decelerating](/documentation/swiftui/scrollphase/decelerating)
- [ScrollPhase.idle](/documentation/swiftui/scrollphase/idle)
- [ScrollPhase.interacting](/documentation/swiftui/scrollphase/interacting)
- [ScrollPhase.tracking](/documentation/swiftui/scrollphase/tracking)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
