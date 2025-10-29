---
title: RotateGesture3D
description: A gesture that recognizes 3D rotation motion and tracks the angle and axis of the rotation.
source: https://developer.apple.com/documentation/swiftui/rotategesture3d
timestamp: 2025-10-29T00:14:56.425Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# RotateGesture3D

**Available on:** visionOS 1.0+

> A gesture that recognizes 3D rotation motion and tracks the angle and axis of the rotation.

```swift
struct RotateGesture3D
```

## Overview

You can constrain this gesture to recognize rotation about a specific 3D axis. For example, `RotateGesture3D(constrainedToAxis: .x)` creates a gesture that recognizes rotation only around the global X axis. The axis you provide will be normalized.

A rotation gesture tracks how a rotation event sequence changes. To recognize a rotation gesture on a view, create and configure the gesture, and then add it to the view using the [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:)) modifier.

## Conforms To

- [Gesture](/documentation/swiftui/gesture)

## Creating the gesture

- [init(constrainedToAxis:minimumAngleDelta:)](/documentation/swiftui/rotategesture3d/init(constrainedtoaxis:minimumangledelta:)) Creates a rotation gesture with a minimum delta for the gesture to start and axis to constrain measurement of rotation.
- [minimumAngleDelta](/documentation/swiftui/rotategesture3d/minimumangledelta) The minimum angle delta before the gesture becomes active.
- [constrainedAxis](/documentation/swiftui/rotategesture3d/constrainedaxis) An axis around which the rotation is constrained.

## Recognizing gestures that change over time

- [gesture(_:)](/documentation/swiftui/view/gesture(_:))
- [gesture(_:isEnabled:)](/documentation/swiftui/view/gesture(_:isenabled:))
- [gesture(_:name:isEnabled:)](/documentation/swiftui/view/gesture(_:name:isenabled:))
- [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:))
- [DragGesture](/documentation/swiftui/draggesture)
- [WindowDragGesture](/documentation/swiftui/windowdraggesture)
- [MagnifyGesture](/documentation/swiftui/magnifygesture)
- [RotateGesture](/documentation/swiftui/rotategesture)
- [GestureMask](/documentation/swiftui/gesturemask)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
