---
title: volumeWorldAlignment(_:)
description: Specifies how a volume should be aligned when moved in the world.
source: https://developer.apple.com/documentation/swiftui/scene/volumeworldalignment(_:)
timestamp: 2025-10-29T00:10:28.819Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# volumeWorldAlignment(_:)

**Available on:** visionOS 2.0+

> Specifies how a volume should be aligned when moved in the world.

```swift
nonisolated func volumeWorldAlignment(_ behavior: WorldAlignmentBehavior) -> some Scene
```

## Discussion

For example, you can create a volume that remains parallel to the floor even when lifted up high above eye level by applying a [gravity Aligned](/documentation/swiftui/worldalignmentbehavior/gravityaligned) alignment to the scene:

```swift
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(.volumetric)
        .volumeWorldAlignment(.gravityAligned)
    }
}
```

The default value if you don’t apply the modifier is [automatic](/documentation/swiftui/worldalignmentbehavior/automatic). With that strategy, volumes will tilt themselves so the front remains fully visible while being repositioned.

## Interacting with volumes

- [onVolumeViewpointChange(updateStrategy:initial:_:)](/documentation/swiftui/view/onvolumeviewpointchange(updatestrategy:initial:_:))
- [supportedVolumeViewpoints(_:)](/documentation/swiftui/view/supportedvolumeviewpoints(_:))
- [VolumeViewpointUpdateStrategy](/documentation/swiftui/volumeviewpointupdatestrategy)
- [Viewpoint3D](/documentation/swiftui/viewpoint3d)
- [SquareAzimuth](/documentation/swiftui/squareazimuth)
- [WorldAlignmentBehavior](/documentation/swiftui/worldalignmentbehavior)
- [WorldScalingBehavior](/documentation/swiftui/worldscalingbehavior)
- [defaultWorldScaling(_:)](/documentation/swiftui/scene/defaultworldscaling(_:))
- [WorldScalingCompensation](/documentation/swiftui/worldscalingcompensation)
- [worldTrackingLimitations](/documentation/swiftui/environmentvalues/worldtrackinglimitations)
- [WorldTrackingLimitation](/documentation/swiftui/worldtrackinglimitation)
- [SurfaceSnappingInfo](/documentation/swiftui/surfacesnappinginfo)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
