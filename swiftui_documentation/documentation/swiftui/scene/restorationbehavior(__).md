---
title: restorationBehavior(_:)
description: Sets the restoration behavior for this scene.
source: https://developer.apple.com/documentation/swiftui/scene/restorationbehavior(_:)
timestamp: 2025-10-29T00:11:36.730Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# restorationBehavior(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Sets the restoration behavior for this scene.

```swift
nonisolated func restorationBehavior(_ behavior: SceneRestorationBehavior) -> some Scene
```

## Discussion

Use this scene modifier to apply a value of this type to a [Scene](/documentation/swiftui/scene) you define in your [App](/documentation/swiftui/app) declaration. The value you specify determines how the system will restore windows from a previous run of your application.

For example, you may have a scene that you do not wish to be restored on launch:

```swift
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        Window(id: "network-test", "Network Connection Test") {
            NetworkTestView()
        }
        .restorationBehavior(.disabled)
    }
}
```

The default value for all scenes if you do not apply the modifier is [automatic](/documentation/swiftui/scenerestorationbehavior/automatic). With that strategy, scenes will restore themselves depending on the default behavior for the platform.

## Configuring window visibility

- [WindowVisibilityToggle](/documentation/swiftui/windowvisibilitytoggle)
- [defaultLaunchBehavior(_:)](/documentation/swiftui/scene/defaultlaunchbehavior(_:))
- [SceneLaunchBehavior](/documentation/swiftui/scenelaunchbehavior)
- [SceneRestorationBehavior](/documentation/swiftui/scenerestorationbehavior)
- [persistentSystemOverlays(_:)](/documentation/swiftui/scene/persistentsystemoverlays(_:))
- [windowToolbarFullScreenVisibility(_:)](/documentation/swiftui/view/windowtoolbarfullscreenvisibility(_:))
- [WindowToolbarFullScreenVisibility](/documentation/swiftui/windowtoolbarfullscreenvisibility)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
