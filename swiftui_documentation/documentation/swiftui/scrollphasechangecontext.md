---
title: ScrollPhaseChangeContext
description: A type that provides you with more content when the phase of a scroll view changes.
source: https://developer.apple.com/documentation/swiftui/scrollphasechangecontext
timestamp: 2025-10-29T00:14:24.590Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ScrollPhaseChangeContext

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A type that provides you with more content when the phase of a scroll view changes.

```swift
struct ScrollPhaseChangeContext
```

## Overview

You don’t create this type directly. Instead, SwiftUI provides an instance of this type in the [onScrollPhaseChange(_:)](/documentation/swiftui/view/onscrollphasechange(_:)) modifier.

## Instance Properties

- [geometry](/documentation/swiftui/scrollphasechangecontext/geometry) The geometry of the scroll view at the time of the scroll phase change.
- [velocity](/documentation/swiftui/scrollphasechangecontext/velocity) The velocity of the scroll view at the time of the scroll phase change.

## Responding to scroll view changes

- [onScrollGeometryChange(for:of:action:)](/documentation/swiftui/view/onscrollgeometrychange(for:of:action:))
- [onScrollTargetVisibilityChange(idType:threshold:_:)](/documentation/swiftui/view/onscrolltargetvisibilitychange(idtype:threshold:_:))
- [onScrollVisibilityChange(threshold:_:)](/documentation/swiftui/view/onscrollvisibilitychange(threshold:_:))
- [onScrollPhaseChange(_:)](/documentation/swiftui/view/onscrollphasechange(_:))
- [ScrollGeometry](/documentation/swiftui/scrollgeometry)
- [ScrollPhase](/documentation/swiftui/scrollphase)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
