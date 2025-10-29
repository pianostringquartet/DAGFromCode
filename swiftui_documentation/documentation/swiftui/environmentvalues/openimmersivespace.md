---
title: openImmersiveSpace
description: An action that presents an immersive space.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/openimmersivespace
timestamp: 2025-10-29T00:14:52.115Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# openImmersiveSpace

**Available on:** macOS 26.0+, visionOS 1.0+

> An action that presents an immersive space.

```swift
var openImmersiveSpace: OpenImmersiveSpaceAction { get }
```

## Discussion

Use this environment value to get the instance of the [Open Immersive Space Action](/documentation/swiftui/openimmersivespaceaction) structure for a given [Environment](/documentation/swiftui/environment). Then call the instance to present a space. You call the instance directly because it defines `callAsFunction()` methods that Swift calls when you call the instance.

On macOS, this may be used to open a remote immersive space declared with [Remote Immersive Space](/documentation/swiftui/remoteimmersivespace). When your app opens a remote immersive space, the system may ask the user for a preferred device with which to display the content.

For example, you can define a button that opens a specified planet in an immersive space:

```swift
@main
struct SolarSystemApp: App {
    var body: some Scene {
        ImmersiveSpace(for: Planet.ID.self) { $planetID in
            // ...
        }
    }
}

struct ShowPlanetButton: View {
    var planet: Planet
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace

    var body: some View {
        Button("Show \(planet.name)") {
            Task {
                await openImmersiveSpace(value: planet.ID)
            }
        }
    }
}
```

You indicate which immersive space to open by providing one of the following:

- A string identifier that you pass through the `id` parameter.
- A `value` parameter that has a type that matches the type that you specify in the space’s initializer, as in the above example.
- Both an identifier and a value. This enables you to define multiple spaces that take input values of the same type and distinguish them by their string identifiers.

The call is asynchronous and returns after presenting the space or if an error occurs. You can check for errors by inspecting the call’s return value, which is of type [Result](/documentation/swiftui/openimmersivespaceaction/result). For example, the call returns an error if you already have an immersive space open, because the system enables only one space to be open at a time.

If you provide a value when you open the space, the scene’s trailing closure receives a binding to the value that you provide. For best performance, use lightweight data for the presentation value. For structured model values that conform to [Identifiable](/documentation/Swift/Identifiable), the value’s identifier makes a good presentation value, like the `planet.ID` value in the above code.

## Opening an immersive space

- [OpenImmersiveSpaceAction](/documentation/swiftui/openimmersivespaceaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
