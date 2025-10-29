---
title: WorldScalingBehavior
description: Specifies the scaling behavior a window should have within the world.
source: https://developer.apple.com/documentation/swiftui/worldscalingbehavior
timestamp: 2025-10-29T00:10:40.511Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WorldScalingBehavior

**Available on:** visionOS 2.0+

> Specifies the scaling behavior a window should have within the world.

```swift
struct WorldScalingBehavior
```

## Overview

By default, a regular [Window Group](/documentation/swiftui/windowgroup) uses a scaling behavior of [dynamic](/documentation/swiftui/worldscalingbehavior/dynamic), and a window with [volumetric](/documentation/swiftui/windowstyle/volumetric) has a fixed scale.

Dynamic scale means the window will scale larger as it moves further away, maintaining the same angular size. Fixed scale means the window will keep its physical size in the world.

For further information, see [spatial-layout#Scale](/design/Human-Interface-Guidelines/spatial-layout) in the Human Interface Guidelines.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [automatic](/documentation/swiftui/worldscalingbehavior/automatic) The scaling behavior that is standard for the window’s style.
- [dynamic](/documentation/swiftui/worldscalingbehavior/dynamic) The window will scale up as it moves further away, maintaining the same angular size.

## Interacting with volumes

- [onVolumeViewpointChange(updateStrategy:initial:_:)](/documentation/swiftui/view/onvolumeviewpointchange(updatestrategy:initial:_:))
- [supportedVolumeViewpoints(_:)](/documentation/swiftui/view/supportedvolumeviewpoints(_:))
- [VolumeViewpointUpdateStrategy](/documentation/swiftui/volumeviewpointupdatestrategy)
- [Viewpoint3D](/documentation/swiftui/viewpoint3d)
- [SquareAzimuth](/documentation/swiftui/squareazimuth)
- [WorldAlignmentBehavior](/documentation/swiftui/worldalignmentbehavior)
- [volumeWorldAlignment(_:)](/documentation/swiftui/scene/volumeworldalignment(_:))
- [defaultWorldScaling(_:)](/documentation/swiftui/scene/defaultworldscaling(_:))
- [WorldScalingCompensation](/documentation/swiftui/worldscalingcompensation)
- [worldTrackingLimitations](/documentation/swiftui/environmentvalues/worldtrackinglimitations)
- [WorldTrackingLimitation](/documentation/swiftui/worldtrackinglimitation)
- [SurfaceSnappingInfo](/documentation/swiftui/surfacesnappinginfo)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
