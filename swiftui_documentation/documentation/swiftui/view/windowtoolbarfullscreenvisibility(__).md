---
title: windowToolbarFullScreenVisibility(_:)
description: Configures the visibility of the window toolbar when the window enters full screen mode.
source: https://developer.apple.com/documentation/swiftui/view/windowtoolbarfullscreenvisibility(_:)
timestamp: 2025-10-29T00:11:47.417Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# windowToolbarFullScreenVisibility(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Configures the visibility of the window toolbar when the window enters full screen mode.

```swift
nonisolated func windowToolbarFullScreenVisibility(_ visibility: WindowToolbarFullScreenVisibility) -> some View
```

## Parameters

**visibility**

The visibility to use for the window toolbar in full screen mode.



## Discussion

By default, the window toolbar will show at the top of the display, above the window’s contents.

You can use this modifier to override the default behavior.

For example, you can specify that the window toolbar should be hidden by default, and only show once the mouse moves into the area occupied by the menu bar:

```swift
struct RootView: View {
    var body: some View {
        ContentView()
            .toolbar {
                ...
            }
            .windowToolbarFullScreenVisibility(.onHover)
    }
}
```

## Configuring window visibility

- [WindowVisibilityToggle](/documentation/swiftui/windowvisibilitytoggle)
- [defaultLaunchBehavior(_:)](/documentation/swiftui/scene/defaultlaunchbehavior(_:))
- [restorationBehavior(_:)](/documentation/swiftui/scene/restorationbehavior(_:))
- [SceneLaunchBehavior](/documentation/swiftui/scenelaunchbehavior)
- [SceneRestorationBehavior](/documentation/swiftui/scenerestorationbehavior)
- [persistentSystemOverlays(_:)](/documentation/swiftui/scene/persistentsystemoverlays(_:))
- [WindowToolbarFullScreenVisibility](/documentation/swiftui/windowtoolbarfullscreenvisibility)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
