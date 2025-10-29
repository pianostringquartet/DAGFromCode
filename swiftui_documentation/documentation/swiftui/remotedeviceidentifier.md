---
title: RemoteDeviceIdentifier
description: An opaque type that identifies a remote device displaying scene content in a .
source: https://developer.apple.com/documentation/swiftui/remotedeviceidentifier
timestamp: 2025-10-29T00:15:27.216Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# RemoteDeviceIdentifier

**Available on:** macOS 26.0+, visionOS 26.0+

> An opaque type that identifies a remote device displaying scene content in a .

```swift
struct RemoteDeviceIdentifier
```

## Overview

Access this from the [remote Device Identifier](/documentation/swiftui/environmentvalues/remotedeviceidentifier) environment property in a remote scene to get the identifier for that scene’s device.

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

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Instance Properties

- [cDevice](/documentation/swiftui/remotedeviceidentifier/cdevice) Returns the  associated with this device.

## Handling remote immersive spaces

- [RemoteImmersiveSpace](/documentation/swiftui/remoteimmersivespace)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
