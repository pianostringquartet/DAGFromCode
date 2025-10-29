---
title: Manipulable.GestureState
description: Describes the state of a manipulation gesture.
source: https://developer.apple.com/documentation/swiftui/manipulable/gesturestate
timestamp: 2025-10-29T00:12:26.303Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [manipulable](/documentation/swiftui/manipulable)

**Structure**

# Manipulable.GestureState

**Available on:** visionOS 26.0+

> Describes the state of a manipulation gesture.

```swift
struct GestureState
```

## Overview

> [!NOTE]
> [manipulationGesture(updating:coordinateSpace:operations:inertia:isEnabled:onChanged:)](/documentation/swiftui/view/manipulationgesture(updating:coordinatespace:operations:inertia:isenabled:onchanged:))

> [!NOTE]
> [manipulable(using:)](/documentation/swiftui/view/manipulable(using:))

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Initializers

- [init(transform:)](/documentation/swiftui/manipulable/gesturestate/init(transform:)) Creates a new manipulation gesture state with the given transform.

## Instance Properties

- [isActive](/documentation/swiftui/manipulable/gesturestate/isactive) The Boolean value that indicates whether a manipulation gesture is currently active.
- [transform](/documentation/swiftui/manipulable/gesturestate/transform) The current 3D affine transform applied by an active manipulation gesture.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
