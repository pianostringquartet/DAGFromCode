---
title: WorldTrackingLimitation
description: A structure to represent limitations of tracking the user’s surroundings.
source: https://developer.apple.com/documentation/swiftui/worldtrackinglimitation
timestamp: 2025-10-29T00:13:32.811Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WorldTrackingLimitation

**Available on:** macOS 26.0+, visionOS 2.0+

> A structure to represent limitations of tracking the user’s surroundings.

```swift
struct WorldTrackingLimitation
```

## Overview

You receive a set of world tracking limitations when you read the [world Tracking Limitations](/documentation/swiftui/environmentvalues/worldtrackinglimitations) environment value. The value tells you which limitations the device currently is facing. If any of the limitations occur due to changing circumstances, e.g., the lighting, the set is updated accordingly. For example, the following [Text](/documentation/swiftui/text) view automatically updates when the world tracking limitations change:

```swift
@Environment(\.worldTrackingLimitations)
private var worldTrackingLimitations

var body: some View {
    Text("Can track translation?" + worldTrackingLimitations
        .contains(.translation) ? "No" : "Yes")
}
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [orientation](/documentation/swiftui/worldtrackinglimitation/orientation) The device capabilities of tracking orientation changes in all dimensions are currently limited.
- [translation](/documentation/swiftui/worldtrackinglimitation/translation) The device capabilities of tracking translation changes in all dimensions are currently limited.

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
- [WorldScalingCompensation](/documentation/swiftui/worldscalingcompensation)
- [worldTrackingLimitations](/documentation/swiftui/environmentvalues/worldtrackinglimitations)
- [SurfaceSnappingInfo](/documentation/swiftui/surfacesnappinginfo)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
