---
title: VolumeViewpointUpdateStrategy
description: A type describing when the action provided to  should be called.
source: https://developer.apple.com/documentation/swiftui/volumeviewpointupdatestrategy
timestamp: 2025-10-29T00:13:25.060Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# VolumeViewpointUpdateStrategy

**Available on:** visionOS 2.0+

> A type describing when the action provided to  should be called.

```swift
struct VolumeViewpointUpdateStrategy
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [all](/documentation/swiftui/volumeviewpointupdatestrategy/all) The action should be run for all viewpoint changes.
- [supported](/documentation/swiftui/volumeviewpointupdatestrategy/supported) The action should only be run when the new viewpoint is equivalent to one of the values provided through .

## Interacting with volumes

- [onVolumeViewpointChange(updateStrategy:initial:_:)](/documentation/swiftui/view/onvolumeviewpointchange(updatestrategy:initial:_:))
- [supportedVolumeViewpoints(_:)](/documentation/swiftui/view/supportedvolumeviewpoints(_:))
- [Viewpoint3D](/documentation/swiftui/viewpoint3d)
- [SquareAzimuth](/documentation/swiftui/squareazimuth)
- [WorldAlignmentBehavior](/documentation/swiftui/worldalignmentbehavior)
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
