---
title: ScrollPhase
description: A type that describes the state of a scroll gesture of a scrollable view like a scroll view.
source: https://developer.apple.com/documentation/swiftui/scrollphase
timestamp: 2025-10-29T00:12:12.849Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# ScrollPhase

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A type that describes the state of a scroll gesture of a scrollable view like a scroll view.

```swift
@frozen enum ScrollPhase
```

## Overview

A scroll gesture can be in one of four phases: - idle: No active scroll is occurring. - panning: An active scroll being driven by the user is occurring. - decelerating: The user has stopped driving a scroll and the scroll view is decelerating to its final target. - animating: The system is animating to a final target as a result of a programmatic animated scroll from using a [Scroll View Reader](/documentation/swiftui/scrollviewreader) or [scrollPosition(id:anchor:)](/documentation/swiftui/view/scrollposition(id:anchor:)) modifier.

SwiftUI provides you a value of this type when using the [onScrollPhaseChange(_:)](/documentation/swiftui/view/onscrollphasechange(_:)) modifier.

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [CustomDebugStringConvertible](/documentation/Swift/CustomDebugStringConvertible)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting scroll gesture states

- [ScrollPhase.animating](/documentation/swiftui/scrollphase/animating) The animating phase where the scroll view is animating towards a final target.
- [ScrollPhase.decelerating](/documentation/swiftui/scrollphase/decelerating) The decelerating phase where the user use has stopped interacting with the scroll view and the scroll view is decelerating towards its final target.
- [ScrollPhase.idle](/documentation/swiftui/scrollphase/idle) The idle phase where no kind of scrolling is occurring.
- [ScrollPhase.interacting](/documentation/swiftui/scrollphase/interacting) The interacting phase where the user is interacting with the scroll view.
- [ScrollPhase.tracking](/documentation/swiftui/scrollphase/tracking) The tracking phase where the scroll view is tracking a potential scroll by the user but the user hasn’t started a scroll.

## Checking for active scrolling

- [isScrolling](/documentation/swiftui/scrollphase/isscrolling) Whether the scroll view is actively scrolling.

## Responding to scroll view changes

- [onScrollGeometryChange(for:of:action:)](/documentation/swiftui/view/onscrollgeometrychange(for:of:action:))
- [onScrollTargetVisibilityChange(idType:threshold:_:)](/documentation/swiftui/view/onscrolltargetvisibilitychange(idtype:threshold:_:))
- [onScrollVisibilityChange(threshold:_:)](/documentation/swiftui/view/onscrollvisibilitychange(threshold:_:))
- [onScrollPhaseChange(_:)](/documentation/swiftui/view/onscrollphasechange(_:))
- [ScrollGeometry](/documentation/swiftui/scrollgeometry)
- [ScrollPhaseChangeContext](/documentation/swiftui/scrollphasechangecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
