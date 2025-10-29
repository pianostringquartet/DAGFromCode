---
title: defaultWorldScaling(_:)
description: Specify the world scaling behavior for the window.
source: https://developer.apple.com/documentation/swiftui/scene/defaultworldscaling(_:)
timestamp: 2025-10-29T00:14:28.191Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# defaultWorldScaling(_:)

**Available on:** visionOS 2.0+

> Specify the world scaling behavior for the window.

```swift
nonisolated func defaultWorldScaling(_ scaling: WorldScalingBehavior) -> some Scene
```

## Discussion

By default, regular windows increase their physical size as they move further away, ensuring they remain at the same angular size. This preserves legibility and ease of use for text and controls. Volumes render with a fixed physical size, because they are most commonly used for 3D content which is meant to behave with greater physical accuracy.

This modifier overrides the physical scaling behavior for volumes, so they scale like windows while still maintaining other volumetric behaviors.

This modifier has no effect on immersive spaces or windows without a window style of [volumetric](/documentation/swiftui/windowstyle/volumetric).

```swift
@main
struct SampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(.volumetric)
        .defaultWorldScaling(.dynamic)
    }
}
```

For further information, see [spatial-layout#Scale](/design/Human-Interface-Guidelines/spatial-layout) in the Human Interface Guidelines.

## Interacting with volumes

- [onVolumeViewpointChange(updateStrategy:initial:_:)](/documentation/swiftui/view/onvolumeviewpointchange(updatestrategy:initial:_:))
- [supportedVolumeViewpoints(_:)](/documentation/swiftui/view/supportedvolumeviewpoints(_:))
- [VolumeViewpointUpdateStrategy](/documentation/swiftui/volumeviewpointupdatestrategy)
- [Viewpoint3D](/documentation/swiftui/viewpoint3d)
- [SquareAzimuth](/documentation/swiftui/squareazimuth)
- [WorldAlignmentBehavior](/documentation/swiftui/worldalignmentbehavior)
- [volumeWorldAlignment(_:)](/documentation/swiftui/scene/volumeworldalignment(_:))
- [WorldScalingBehavior](/documentation/swiftui/worldscalingbehavior)
- [WorldScalingCompensation](/documentation/swiftui/worldscalingcompensation)
- [worldTrackingLimitations](/documentation/swiftui/environmentvalues/worldtrackinglimitations)
- [WorldTrackingLimitation](/documentation/swiftui/worldtrackinglimitation)
- [SurfaceSnappingInfo](/documentation/swiftui/surfacesnappinginfo)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
