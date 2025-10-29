---
title: RemoteImmersiveSpace
description: A scene that presents its content in an unbounded space on a remote device.
source: https://developer.apple.com/documentation/swiftui/remoteimmersivespace
timestamp: 2025-10-29T00:13:54.180Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# RemoteImmersiveSpace

**Available on:** macOS 26.0+

> A scene that presents its content in an unbounded space on a remote device.

```swift
struct RemoteImmersiveSpace<Content, Data> where Content : ImmersiveSpaceContent, Data : Decodable, Data : Encodable, Data : Hashable
```

## Overview

Use a remote immersive space as a container for compositor content that your macOS app presents on a user’s chosen visionOS device. The compositor content that you declare as the remote immersive space’s content serves as a template for it:

```swift
@main
struct SolarSystemApp: App {
    var body: some Scene {
        RemoteImmersiveSpace {
            CompositorLayer { layerRenderer in
                // Set up and run the Metal render loop.
                let renderThread = Thread {
                    let engine = solar_engine_create(layerRenderer)
                    solar_engine_render_loop(engine)
                }
                renderThread.name = "Render Thread"
                renderThread.start()
            }
        }
    }
}
```

### Using the environment, state, and modifiers

Declare types that conform to the [Compositor Content](/documentation/swiftui/compositorcontent) protocol to access the environment, declare `@State` variables, and use modifiers inside your remote immersive space.

```swift
struct SolarSystem: CompositorContent {
    @Environment(\.scenePhase) private var scenePhase
    @State private var model: AppModel

    var body: some CompositorContent {
        CompositorLayer { layerRenderer in
            // Set up and run the Metal render loop.
            let renderThread = Thread {
                let engine = solar_engine_create(layerRenderer)
                solar_engine_render_loop(engine)
            }
            renderThread.name = "Render Thread"
            renderThread.start()
        }
        .onChange(of: scenePhase) {
            model.remoteSpaceActive = scenePhase == .active
        }
    }
}
```

### Identifying the remote device

Use the [remote Device Identifier](/documentation/swiftui/environmentvalues/remotedeviceidentifier) environment value to identify the device the scene is running on. This identifier can also be used to initialize an `ARKitSession` associated with the remote device.

```swift
struct SolarSystem: CompositorContent {
    @Environment(\.remoteDeviceIdentifier) private var deviceID

    var body: some CompositorContent {
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
```

> [!NOTE]
> This identifier is not stable across app launches.

### Style the immersive space

By default, immersive spaces use the [mixed](/documentation/swiftui/immersionstyle/mixed) style which places virtual content in a person’s surroundings. You can select a different style for the immersive space by adding the [immersionStyle(selection:in:)](/documentation/swiftui/scene/immersionstyle(selection:in:)) scene modifier to the scene. For example, you can completely control the visual experience using the [full](/documentation/swiftui/immersionstyle/full) immersion style:

```swift
@main
struct SolarSystemApp: App {
    @State private var style: ImmersionStyle = .full

    var body: some Scene {
        RemoteImmersiveSpace {
            SolarSystem()
        }
        .immersionStyle(selection: $style, in: .full)
    }
}
```

You can change the immersion style after presenting the immersive space by changing the modifier’s `selection` input, although you can only use one of the values that you specify in the modifier’s second parameter.

### Open a remote immersive space

You can programmatically open a remote immersive space by giving it an identifier. For example, you can label the solar system view from the previous example:

```swift
RemoteImmersiveSpace(id: "solarSystem") {
    SolarSystem()
}
```

Elsewhere in your code, you use the [open Immersive Space](/documentation/swiftui/environmentvalues/openimmersivespace) environment value to get the instance of the [Open Immersive Space Action](/documentation/swiftui/openimmersivespaceaction) structure for a given [Environment](/documentation/swiftui/environment). You call the instance directly — for example, from a button’s closure, like in the following code — using the identifier:

```swift
struct NewSolarSystemImmersiveSpaceButton: View {
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.supportsRemoteScenes) private var supportsRemoteScenes

    var body: some View {
        Button("Present Solar System") {
            Task {
                await openImmersiveSpace(id: "solarSystem")
            }
        }
        .disabled(!supportsRemoteScenes)
        .help(!supportsRemoteScenes
            ? "Presenting remote scenes is not supported on this device."
            : "")
    }
}
```

Mark the call to the action with `await` because it executes asynchronously. When your app opens a remote immersive space, the system may ask the user for a preferred device with which to display the content. Upon selection, the system on the remote device hides all other visible apps. The system allows only one immersive space to be open at a time. Be sure to close the open immersive space before opening another one.

### Dismiss a remote immersive space

You can dismiss an immersive space by calling the [dismiss Immersive Space](/documentation/swiftui/environmentvalues/dismissimmersivespace) action from the environment. For example, you can define a button that dismisses an immersive space:

```swift
struct DismissImmersiveSpaceButton: View {
    @Environment(\.dismissImmersiveSpace)
    private var dismissImmersiveSpace

    var body: some View {
        Button("Close Solar System") {
            Task {
                await dismissImmersiveSpace()
            }
        }
    }
}
```

The dismiss action runs asynchronously, like the open action. You don’t need to specify an identifier when dismissing an immersive space because there can only be one immersive space open at a time.

### Present an immersive space at launch

When an app launches, it opens an instance of the first scene that’s listed in the app’s body. When opening an immersive space at launch, the system may still ask the user for a preferred device with which to display the content.

## Conforms To

- [Scene](/documentation/swiftui/scene)

## Initializers

- [init(content:)](/documentation/swiftui/remoteimmersivespace/init(content:)) Creates a remote immersive space.
- [init(for:content:)](/documentation/swiftui/remoteimmersivespace/init(for:content:)) Creates the remote immersive space for a specified type of presented data.
- [init(for:content:defaultValue:)](/documentation/swiftui/remoteimmersivespace/init(for:content:defaultvalue:)) Creates the remote immersive space for a specified type of presented data, and a default value, if the data is not set.
- [init(id:content:)](/documentation/swiftui/remoteimmersivespace/init(id:content:)) Creates the remote immersive space associated with the specified identifier.
- [init(id:for:content:)](/documentation/swiftui/remoteimmersivespace/init(id:for:content:)) Creates the remote immersive space associated with an identifier for a specified type of presented data.
- [init(id:for:content:defaultValue:)](/documentation/swiftui/remoteimmersivespace/init(id:for:content:defaultvalue:)) Creates the remote immersive space associated with an identifier for a specified type of presented data, and a default value, if the data is not set.

## Handling remote immersive spaces

- [RemoteDeviceIdentifier](/documentation/swiftui/remotedeviceidentifier)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
