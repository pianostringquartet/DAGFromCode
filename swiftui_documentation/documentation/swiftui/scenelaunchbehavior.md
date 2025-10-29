---
title: SceneLaunchBehavior
description: The launch behavior for a scene.
source: https://developer.apple.com/documentation/swiftui/scenelaunchbehavior
timestamp: 2025-10-29T00:11:47.653Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SceneLaunchBehavior

**Available on:** macOS 15.0+, visionOS 26.0+

> The launch behavior for a scene.

```swift
struct SceneLaunchBehavior
```

## Overview

Use the [defaultLaunchBehavior(_:)](/documentation/swiftui/scene/defaultlaunchbehavior(_:)) modifier to apply a value of this type to a [Scene](/documentation/swiftui/scene) you specify in your [App](/documentation/swiftui/app). The value you specify determines how the system will present the scene in the absense of any previously restored scenes on launch of your application.

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

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [automatic](/documentation/swiftui/scenelaunchbehavior/automatic) The automatic behavior.
- [presented](/documentation/swiftui/scenelaunchbehavior/presented) The presented behavior. The scene will present itself in the absence of any previously restored scenes.
- [suppressed](/documentation/swiftui/scenelaunchbehavior/suppressed) The suppressed behavior. The scene will not present itself in the absence of any previously restored scenes.

## Configuring window visibility

- [WindowVisibilityToggle](/documentation/swiftui/windowvisibilitytoggle)
- [defaultLaunchBehavior(_:)](/documentation/swiftui/scene/defaultlaunchbehavior(_:))
- [restorationBehavior(_:)](/documentation/swiftui/scene/restorationbehavior(_:))
- [SceneRestorationBehavior](/documentation/swiftui/scenerestorationbehavior)
- [persistentSystemOverlays(_:)](/documentation/swiftui/scene/persistentsystemoverlays(_:))
- [windowToolbarFullScreenVisibility(_:)](/documentation/swiftui/view/windowtoolbarfullscreenvisibility(_:))
- [WindowToolbarFullScreenVisibility](/documentation/swiftui/windowtoolbarfullscreenvisibility)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
