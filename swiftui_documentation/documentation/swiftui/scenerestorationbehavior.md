---
title: SceneRestorationBehavior
description: The restoration behavior for a scene.
source: https://developer.apple.com/documentation/swiftui/scenerestorationbehavior
timestamp: 2025-10-29T00:14:10.503Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SceneRestorationBehavior

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The restoration behavior for a scene.

```swift
struct SceneRestorationBehavior
```

## Overview

Use the [restorationBehavior(_:)](/documentation/swiftui/scene/restorationbehavior(_:)) scene modifier to apply a value of this type to a [Scene](/documentation/swiftui/scene) you define in your [App](/documentation/swiftui/app) declaration. The value you specify determines how the system will restore windows from a previous run of your application.

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

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [automatic](/documentation/swiftui/scenerestorationbehavior/automatic) The automatic behavior. The scene’s windows will be restored as defined by the underlying platform.
- [disabled](/documentation/swiftui/scenerestorationbehavior/disabled) The disabled behavior. The scene’s windows will not be restored.

## Configuring window visibility

- [WindowVisibilityToggle](/documentation/swiftui/windowvisibilitytoggle)
- [defaultLaunchBehavior(_:)](/documentation/swiftui/scene/defaultlaunchbehavior(_:))
- [restorationBehavior(_:)](/documentation/swiftui/scene/restorationbehavior(_:))
- [SceneLaunchBehavior](/documentation/swiftui/scenelaunchbehavior)
- [persistentSystemOverlays(_:)](/documentation/swiftui/scene/persistentsystemoverlays(_:))
- [windowToolbarFullScreenVisibility(_:)](/documentation/swiftui/view/windowtoolbarfullscreenvisibility(_:))
- [WindowToolbarFullScreenVisibility](/documentation/swiftui/windowtoolbarfullscreenvisibility)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
