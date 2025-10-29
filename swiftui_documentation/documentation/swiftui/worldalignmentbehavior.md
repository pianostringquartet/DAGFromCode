---
title: WorldAlignmentBehavior
description: A type representing the world alignment behavior for a scene.
source: https://developer.apple.com/documentation/swiftui/worldalignmentbehavior
timestamp: 2025-10-29T00:12:00.203Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WorldAlignmentBehavior

**Available on:** visionOS 2.0+

> A type representing the world alignment behavior for a scene.

```swift
struct WorldAlignmentBehavior
```

## Overview

A value of this type can be provided to the [volumeWorldAlignment(_:)](/documentation/swiftui/scene/volumeworldalignment(_:)) scene modifier to control the world alignment volumes should maintain as they are repositioned. The default value is [automatic](/documentation/swiftui/worldalignmentbehavior/automatic).

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [adaptive](/documentation/swiftui/worldalignmentbehavior/adaptive) When lifted above eye level, the volume will tilt so the front remains fully visible.
- [automatic](/documentation/swiftui/worldalignmentbehavior/automatic) The world alignment behavior that is standard for the system.
- [gravityAligned](/documentation/swiftui/worldalignmentbehavior/gravityaligned) The volume will not tilt so as to remain aligned with gravity.

## Interacting with volumes

- [onVolumeViewpointChange(updateStrategy:initial:_:)](/documentation/swiftui/view/onvolumeviewpointchange(updatestrategy:initial:_:))
- [supportedVolumeViewpoints(_:)](/documentation/swiftui/view/supportedvolumeviewpoints(_:))
- [VolumeViewpointUpdateStrategy](/documentation/swiftui/volumeviewpointupdatestrategy)
- [Viewpoint3D](/documentation/swiftui/viewpoint3d)
- [SquareAzimuth](/documentation/swiftui/squareazimuth)
- [volumeWorldAlignment(_:)](/documentation/swiftui/scene/volumeworldalignment(_:))
- [WorldScalingBehavior](/documentation/swiftui/worldscalingbehavior)
- [defaultWorldScaling(_:)](/documentation/swiftui/scene/defaultworldscaling(_:))
- [WorldScalingCompensation](/documentation/swiftui/worldscalingcompensation)
- [worldTrackingLimitations](/documentation/swiftui/environmentvalues/worldtrackinglimitations)
- [WorldTrackingLimitation](/documentation/swiftui/worldtrackinglimitation)
- [SurfaceSnappingInfo](/documentation/swiftui/surfacesnappinginfo)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
