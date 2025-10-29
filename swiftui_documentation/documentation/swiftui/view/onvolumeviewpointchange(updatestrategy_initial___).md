---
title: onVolumeViewpointChange(updateStrategy:initial:_:)
description: Adds an action to perform when the viewpoint of the volume changes.
source: https://developer.apple.com/documentation/swiftui/view/onvolumeviewpointchange(updatestrategy:initial:_:)
timestamp: 2025-10-29T00:10:14.511Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onVolumeViewpointChange(updateStrategy:initial:_:)

**Available on:** visionOS 2.0+

> Adds an action to perform when the viewpoint of the volume changes.

```swift
@MainActor @preconcurrency func onVolumeViewpointChange(updateStrategy: VolumeViewpointUpdateStrategy = .supported, initial: Bool = true, _ action: @escaping (Viewpoint3D, Viewpoint3D) -> Void) -> some View
```

## Parameters

**updateStrategy**

Whether the action should be run for all viewpoint changes or only for supported viewpoint changes.



**initial**

Whether the action should be run when this view initially appears.



**action**

A closure to run when the viewpoint changes. The closure is also run when the volume is first opened if `initial` is `true`.



## Discussion

Use the provided [Viewpoint3D](/documentation/swiftui/viewpoint3d) to update the content of the volume:

```swift
struct RobotContentView: View {
    @State var robotRotation: Rotation3D = .identity

    var body: some View {
        Model3D(named: "robot")
            .onVolumeViewpointChange { _, newValue in
                robotRotation = Rotation3D.slerp(
                    from: robotRotation,
                    to: newValue.squareAzimuth.orientation,
                    t: 1.0,
                    along: .shortest
                )
            }
            .rotation3DEffect(robotRotation)
            .animation(.easeInOut, value: robotRotation)
    }
}
```

By default, the action will only be run when the new viewpoint is equivalent to one of the values provided through [supportedVolumeViewpoints(_:)](/documentation/swiftui/view/supportedvolumeviewpoints(_:)). The viewpoint will be equivalent to where the window bar and ornaments are presented for a volume. Providing `.all` for the `updateStrategy` argument will result in the action being called without regard to the supported viewpoints.

To determine if the volume is being viewed from an unsupported viewpoint, provide `.all` for the `updateStrategy` argument and check if the viewpoint is not within the supported viewpoints:

```swift
struct ContentView: View {
    @State var showingMoveToFrontSign = false
    @State var moveToFrontSignViewpoint: Viewpoint3D = .standard

    let supportedViewpoints = [SquareAzimuth.front]

    var body: some View {
        MoveToFrontSignView(viewpoint: moveToFrontSignViewpoint)
            .opacity(showingMoveToFrontSign ? 1.0 : 0.0)
            .animation(.easeInOut, value: showingMoveToFrontSign)
            .onVolumeViewpointChange(updateStrategy: .all)
                { _, newValue in

                moveToFrontSignViewpoint = newViewpoint

                let isSupported = supportedViewpoints.contains(
                    newViewpoint.squareAzimuth)
                showingMoveToFrontSign = !isSupported
            }
            .supportedVolumeViewpoints(supportedViewpoints)
    }
}
```

The old and new [Viewpoint3D](/documentation/swiftui/viewpoint3d) provided to the action are relative to the center of the volume.

Reading this value is only valid inside a [View](/documentation/swiftui/view) that inherits the environment of a [Scene](/documentation/swiftui/scene) created with a [Volumetric Window Style](/documentation/swiftui/volumetricwindowstyle).

## Interacting with volumes

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
- [SurfaceSnappingInfo](/documentation/swiftui/surfacesnappinginfo)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
