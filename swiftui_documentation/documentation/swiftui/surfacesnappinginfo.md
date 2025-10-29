---
title: SurfaceSnappingInfo
description: A type representing information about the window scenes snap state.
source: https://developer.apple.com/documentation/swiftui/surfacesnappinginfo
timestamp: 2025-10-29T00:12:11.578Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SurfaceSnappingInfo

**Available on:** visionOS 26.0+

> A type representing information about the window scenes snap state.

```swift
struct SurfaceSnappingInfo
```

## Overview

Use the provided [Surface Snapping Info](/documentation/swiftui/surfacesnappinginfo) to modify the contents of your view.

```swift
struct LightFixtureView: View {
    @Environment(\.surfaceSnappingInfo)
    var snappingInfo: SurfaceSnappingInfo

    var body: some View {
        if snappingInfo.isSnapped {
            switch SurfaceSnappingInfo.authorizationStatus {
                case .authorized:
                    switch snappingInfo.classification {
                        case .table:
                            LampView()
                        case .floor:
                            FloorLampView()
                        default:
                            DefaultLampView()
                    }
                default:
                    DefaultLampView()
            }
        } else {
            FloatingOrbLampView()
        }
    }
}
```

The bottom of volumes may snap to horizontal surfaces and the back of windows may snap to vertical surfaces.

## Conforms To

- [CustomDebugStringConvertible](/documentation/Swift/CustomDebugStringConvertible)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Instance Properties

- [classification](/documentation/swiftui/surfacesnappinginfo/classification) A type that provides information about the surface classification the scene is snapped to. This property only has a value if the scene is snapped and  is .
- [isSnapped](/documentation/swiftui/surfacesnappinginfo/issnapped) A value that represents whether the scene is currently snapped to a physical surface or not.

## Type Properties

- [authorizationStatus](/documentation/swiftui/surfacesnappinginfo/authorizationstatus-swift.type.property) A value that represents whether the user has authorized providing more detailed information about the surface scenes are snapped to. To request this detailed surface information, in your  file, set  to  and set  to provide a description of why your app is requesting this information.

## Enumerations

- [SurfaceSnappingInfo.AuthorizationStatus](/documentation/swiftui/surfacesnappinginfo/authorizationstatus-swift.enum) A type representing whether the user has granted permissions to provide more detailed information about the surface a scene is snapped to.

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
- [WorldTrackingLimitation](/documentation/swiftui/worldtrackinglimitation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
