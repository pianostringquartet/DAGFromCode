---
title: init(constrainedToAxis:minimumAngleDelta:)
description: Creates a rotation gesture with a minimum delta for the gesture to start and axis to constrain measurement of rotation.
source: https://developer.apple.com/documentation/swiftui/rotategesture3d/init(constrainedtoaxis:minimumangledelta:)
timestamp: 2025-10-29T00:13:12.104Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [rotategesture3d](/documentation/swiftui/rotategesture3d)

**Initializer**

# init(constrainedToAxis:minimumAngleDelta:)

**Available on:** visionOS 1.0+

> Creates a rotation gesture with a minimum delta for the gesture to start and axis to constrain measurement of rotation.

```swift
init(constrainedToAxis: RotationAxis3D? = nil, minimumAngleDelta: Angle = .degrees(1))
```

## Parameters

**constrainedToAxis**

The 3D axis about which rotation is measured.



**minimumAngleDelta**

The minimum delta required before the gesture starts. The default value is a one-degree angle.



## Discussion

If the constrained axis is `nil`, the gesture measures unconstrained 3D rotation.

## Creating the gesture

- [minimumAngleDelta](/documentation/swiftui/rotategesture3d/minimumangledelta)
- [constrainedAxis](/documentation/swiftui/rotategesture3d/constrainedaxis)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
