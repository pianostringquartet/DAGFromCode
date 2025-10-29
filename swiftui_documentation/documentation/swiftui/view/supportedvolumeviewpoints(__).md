---
title: supportedVolumeViewpoints(_:)
description: Specifies which viewpoints are supported for the window bar and ornaments in a volume.
source: https://developer.apple.com/documentation/swiftui/view/supportedvolumeviewpoints(_:)
timestamp: 2025-10-29T00:14:54.349Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# supportedVolumeViewpoints(_:)

**Available on:** visionOS 2.0+

> Specifies which viewpoints are supported for the window bar and ornaments in a volume.

```swift
nonisolated func supportedVolumeViewpoints(_ viewpoints: SquareAzimuth.Set) -> some View
```

## Discussion

This defaults to all viewpoints and determines which viewpoints the window bar and ornaments will ‘follow’ the user to as they move around the volume.

## Interacting with volumes

- [onVolumeViewpointChange(updateStrategy:initial:_:)](/documentation/swiftui/view/onvolumeviewpointchange(updatestrategy:initial:_:))
- [VolumeViewpointUpdateStrategy](/documentation/swiftui/volumeviewpointupdatestrategy)
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
