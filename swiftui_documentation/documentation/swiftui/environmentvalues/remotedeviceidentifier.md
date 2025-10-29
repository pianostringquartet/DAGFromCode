---
title: remoteDeviceIdentifier
description: An opaque object that identifies the device on which the scene (from which this value is accessed from) is being presented on.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/remotedeviceidentifier
timestamp: 2025-10-29T00:12:27.560Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# remoteDeviceIdentifier

**Available on:** macOS 26.0+, visionOS 26.0+

> An opaque object that identifies the device on which the scene (from which this value is accessed from) is being presented on.

```swift
var remoteDeviceIdentifier: RemoteDeviceIdentifier? { get }
```

## Discussion

When accessed in a context that is being presented on the local device, this value will be `nil`.

This identifier can also be used to initialize an `ARKitSession` associated with the remote device.

```swift
struct SolarSystem: CompositorContent {
    @Environment(\.remoteDeviceIdentifier) private var deviceID

    var body: some CompositorContent {
        RemoteImmersiveSpace {
            CompositorLayer { layerRenderer in
                // Create an ARSession for the device
                let arSession = ARKitSession(deviceID)

                // Set up and run the Metal render loop.
                let renderThread = Thread {
                    let engine = solar_engine_create(
                        layerRenderer, arSession)
                    solar_engine_render_loop(engine)
                }
                renderThread.name = "Render Thread"
                renderThread.start()
            }
        }
    }
}
```

> [!NOTE]
> This identifier is not stable across app launches.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
