---
title: immersiveEnvironmentBehavior(_:)
description: Sets the immersive environment behavior that should apply when this scene opens.
source: https://developer.apple.com/documentation/swiftui/scene/immersiveenvironmentbehavior(_:)
timestamp: 2025-10-29T00:12:49.496Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# immersiveEnvironmentBehavior(_:)

**Available on:** visionOS 26.0+

> Sets the immersive environment behavior that should apply when this scene opens.

```swift
nonisolated func immersiveEnvironmentBehavior(_ behavior: ImmersiveEnvironmentBehavior) -> some Scene
```

## Parameters

**behavior**

A immersive environment behavior that should be applied by the system when this scene opens.



## Return Value

A scene that uses the specified `behavior`.

## Discussion

Use this modifier to control how the immersive environment behaves when an [Immersive Space](/documentation/swiftui/immersivespace) is opened, that uses an immersion style that supports keeping the immersive environment visible.

For example, the following app defines an Immersive Space that displays an interactive car engine model, and by setting the system environment behavior to `.coexist`, the immersive environment can remain shown while inspecting the details of the engine:

```swift
@main
struct App: App {
    var body: some Scene {
        ImmersiveSpace {
            CarEngineModel()
        }
        .immersiveEnvironmentBehavior(.coexist)
    }
}
```

Note: The behavior is a preference and does not always have to be honored by the system.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
