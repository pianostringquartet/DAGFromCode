---
title: WorldScalingCompensation
description: Indicates whether returned metrics will take dynamic scaling into account.
source: https://developer.apple.com/documentation/swiftui/worldscalingcompensation
timestamp: 2025-10-29T00:11:18.508Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WorldScalingCompensation

**Available on:** visionOS 2.0+

> Indicates whether returned metrics will take dynamic scaling into account.

```swift
struct WorldScalingCompensation
```

## Overview

On visionOS, a window scene or a volume scene with the [defaultWorldScaling(_:)](/documentation/swiftui/scene/defaultworldscaling(_:)) modifier may scale dynamically when the user repositions it. In those cases, the metrics returned by a [Physical Metric](/documentation/swiftui/physicalmetric) or [Physical Metrics Converter](/documentation/swiftui/physicalmetricsconverter) value may or may not correspond to the units of a `RealityView`.

World scale compensation lets you specify if this scaling is taken into account. If the values are [unscaled](/documentation/swiftui/worldscalingcompensation/unscaled), they will correspond to the physical metrics of the user’s surroundings, regardless of dynamic scale. If [scaled](/documentation/swiftui/worldscalingcompensation/scaled), they will be scaled appropriately for the scene, which means they will match the default coordinate system of a `RealityView` in that scene.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [scaled](/documentation/swiftui/worldscalingcompensation/scaled) Returns metrics that are scaled appropriately to match the coordinate system of their scene, including any world scaling behavior.
- [unscaled](/documentation/swiftui/worldscalingcompensation/unscaled) Returns metrics that match the scale of the user’s surroundings, regardless of the world scaling behavior of their scene.

## Interacting with volumes

- [onVolumeViewpointChange(updateStrategy:initial:_:)](/documentation/swiftui/view/onvolumeviewpointchange(updatestrategy:initial:_:))
- [supportedVolumeViewpoints(_:)](/documentation/swiftui/view/supportedvolumeviewpoints(_:))
- [VolumeViewpointUpdateStrategy](/documentation/swiftui/volumeviewpointupdatestrategy)
- [Viewpoint3D](/documentation/swiftui/viewpoint3d)
- [SquareAzimuth](/documentation/swiftui/squareazimuth)
- [WorldAlignmentBehavior](/documentation/swiftui/worldalignmentbehavior)
- [volumeWorldAlignment(_:)](/documentation/swiftui/scene/volumeworldalignment(_:))
- [WorldScalingBehavior](/documentation/swiftui/worldscalingbehavior)
- [defaultWorldScaling(_:)](/documentation/swiftui/scene/defaultworldscaling(_:))
- [worldTrackingLimitations](/documentation/swiftui/environmentvalues/worldtrackinglimitations)
- [WorldTrackingLimitation](/documentation/swiftui/worldtrackinglimitation)
- [SurfaceSnappingInfo](/documentation/swiftui/surfacesnappinginfo)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
