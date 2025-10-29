---
title: SquareAzimuth
description: A type describing what direction something is being viewed from along the horizontal plane and snapped to 4 directions.
source: https://developer.apple.com/documentation/swiftui/squareazimuth
timestamp: 2025-10-29T00:10:52.374Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# SquareAzimuth

**Available on:** visionOS 2.0+

> A type describing what direction something is being viewed from along the horizontal plane and snapped to 4 directions.

```swift
@frozen enum SquareAzimuth
```

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [CaseIterable](/documentation/Swift/CaseIterable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Structures

- [SquareAzimuth.Set](/documentation/swiftui/squareazimuth/set)

## Enumeration Cases

- [SquareAzimuth.back](/documentation/swiftui/squareazimuth/back) Has an orientation with an horizontal angle equal to 
- [SquareAzimuth.front](/documentation/swiftui/squareazimuth/front) Has an orientation with an horizontal angle equal to .
- [SquareAzimuth.left](/documentation/swiftui/squareazimuth/left) Has an orientation with an horizontal angle equal to .
- [SquareAzimuth.right](/documentation/swiftui/squareazimuth/right) Has an orientation with an horizontal angle equal to .

## Initializers

- [init(closestToAzimuth:)](/documentation/swiftui/squareazimuth/init(closesttoazimuth:)) Creates a  case with an orientation that has a horizontal angle closest to the provided azimuth.

## Instance Properties

- [orientation](/documentation/swiftui/squareazimuth/orientation) A 3D rotation that is snapped to the center of one of the four sides.

## Interacting with volumes

- [onVolumeViewpointChange(updateStrategy:initial:_:)](/documentation/swiftui/view/onvolumeviewpointchange(updatestrategy:initial:_:))
- [supportedVolumeViewpoints(_:)](/documentation/swiftui/view/supportedvolumeviewpoints(_:))
- [VolumeViewpointUpdateStrategy](/documentation/swiftui/volumeviewpointupdatestrategy)
- [Viewpoint3D](/documentation/swiftui/viewpoint3d)
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
