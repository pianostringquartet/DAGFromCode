---
title: defaultLaunchBehavior(_:)
description: Sets the default launch behavior for this scene.
source: https://developer.apple.com/documentation/swiftui/scene/defaultlaunchbehavior(_:)
timestamp: 2025-10-29T00:13:23.520Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# defaultLaunchBehavior(_:)

**Available on:** macOS 15.0+, visionOS 26.0+

> Sets the default launch behavior for this scene.

```swift
nonisolated func defaultLaunchBehavior(_ behavior: SceneLaunchBehavior) -> some Scene
```

## Discussion

This behavior can be used to define if a scene is shown on application launch in the absence of any previously saved state.

On platforms that do not support multiple windows, this value is ignored.

On platforms other than macOS, there must be at least one scene that presents itself. If no scenes are defined to present, the first scene will be presented, regardless of the value provided to this modifier.

> [!NOTE]
> During app launch, on platforms other than macOS, the system will only consider scenes whose role matches the [UIApplication Preferred Default Scene Session Role](/documentation/BundleResources/Information-Property-List/UIApplicationPreferredDefaultSceneSessionRole) key in the application scene manifest of the `Info.plist` file. For instance, a volumetric window would need the `UIWindowSceneSessionRoleVolumetricApplication` role.

On macOS, this behavior will also be used to determine which scene is presented when clicking on the icon of a running application with no visible windows.

On visionOS, the system may background the last dismissed scene instead of closing it. Thus, the suppressed behavior additionally specifies that the scene should not be presented when tapping on the application icon with no visible windows.

For example, you may wish to present a welcome window on launch of your app when there are no previous document windows being restored:

```swift
@main
struct MyApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: MyDocument()) { configuration in
            DocumentEditor(configuration.$document)
        }

        Window("Welcome to My App", id: "welcome") {
            WelcomeView()
        }
        .defaultLaunchBehavior(.presented)
    }
}
```

The default value for all scenes if you do not apply this modifier is [automatic](/documentation/swiftui/scenelaunchbehavior/automatic). With that strategy, a scene will only present itself if it is the first scene defined by the app, and no other scenes have presented themselves.

## Configuring window visibility

- [WindowVisibilityToggle](/documentation/swiftui/windowvisibilitytoggle)
- [restorationBehavior(_:)](/documentation/swiftui/scene/restorationbehavior(_:))
- [SceneLaunchBehavior](/documentation/swiftui/scenelaunchbehavior)
- [SceneRestorationBehavior](/documentation/swiftui/scenerestorationbehavior)
- [persistentSystemOverlays(_:)](/documentation/swiftui/scene/persistentsystemoverlays(_:))
- [windowToolbarFullScreenVisibility(_:)](/documentation/swiftui/view/windowtoolbarfullscreenvisibility(_:))
- [WindowToolbarFullScreenVisibility](/documentation/swiftui/windowtoolbarfullscreenvisibility)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
