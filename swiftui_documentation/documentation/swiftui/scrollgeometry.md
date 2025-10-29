---
title: ScrollGeometry
description: A type that defines the geometry of a scroll view.
source: https://developer.apple.com/documentation/swiftui/scrollgeometry
timestamp: 2025-10-29T00:12:14.632Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ScrollGeometry

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A type that defines the geometry of a scroll view.

```swift
struct ScrollGeometry
```

## Overview

SwiftUI provides you values of this type when using modifiers like `View/onScrollGeometryChange(_:action:)` or [onScrollPhaseChange(_:)](/documentation/swiftui/view/onscrollphasechange(_:)).

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [CustomDebugStringConvertible](/documentation/Swift/CustomDebugStringConvertible)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Initializers

- [init(contentOffset:contentSize:contentInsets:containerSize:)](/documentation/swiftui/scrollgeometry/init(contentoffset:contentsize:contentinsets:containersize:)) Creates a scroll geometry.

## Instance Properties

- [bounds](/documentation/swiftui/scrollgeometry/bounds) The bounds rect of the scroll view.
- [containerSize](/documentation/swiftui/scrollgeometry/containersize) The size of the container of the scroll view.
- [contentInsets](/documentation/swiftui/scrollgeometry/contentinsets) The content insets of the scroll view.
- [contentOffset](/documentation/swiftui/scrollgeometry/contentoffset) The content offset of the scroll view.
- [contentSize](/documentation/swiftui/scrollgeometry/contentsize) The size of the content of the scroll view.
- [visibleRect](/documentation/swiftui/scrollgeometry/visiblerect) The visible rect of the scroll view.

## Responding to scroll view changes

- [onScrollGeometryChange(for:of:action:)](/documentation/swiftui/view/onscrollgeometrychange(for:of:action:))
- [onScrollTargetVisibilityChange(idType:threshold:_:)](/documentation/swiftui/view/onscrolltargetvisibilitychange(idtype:threshold:_:))
- [onScrollVisibilityChange(threshold:_:)](/documentation/swiftui/view/onscrollvisibilitychange(threshold:_:))
- [onScrollPhaseChange(_:)](/documentation/swiftui/view/onscrollphasechange(_:))
- [ScrollPhase](/documentation/swiftui/scrollphase)
- [ScrollPhaseChangeContext](/documentation/swiftui/scrollphasechangecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
