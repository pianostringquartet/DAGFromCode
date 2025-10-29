---
title: WindowToolbarFullScreenVisibility
description: The visibility of the window toolbar with respect to full screen mode.
source: https://developer.apple.com/documentation/swiftui/windowtoolbarfullscreenvisibility
timestamp: 2025-10-29T00:15:18.492Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WindowToolbarFullScreenVisibility

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The visibility of the window toolbar with respect to full screen mode.

```swift
struct WindowToolbarFullScreenVisibility
```

## Overview

Use values of this type in conjunction with the [windowToolbarFullScreenVisibility(_:)](/documentation/swiftui/view/windowtoolbarfullscreenvisibility(_:)) modifier to configure how the window toolbar displays itself when the window enters full screen mode.

For example, you can specify that the window toolbar should be hidden by default, and only show when the mouse moves into the area occupied by the menu bar:

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

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [automatic](/documentation/swiftui/windowtoolbarfullscreenvisibility/automatic) The window toolbar visibility will be defined by the system default behavior.
- [onHover](/documentation/swiftui/windowtoolbarfullscreenvisibility/onhover) Hide the window toolbar in full screen mode by default. It will reveal itself when the mouse moves into the area occupied by the menu bar.
- [visible](/documentation/swiftui/windowtoolbarfullscreenvisibility/visible) Prefer to show window toolbar when the window is in full screen mode.

## Configuring window visibility

- [WindowVisibilityToggle](/documentation/swiftui/windowvisibilitytoggle)
- [defaultLaunchBehavior(_:)](/documentation/swiftui/scene/defaultlaunchbehavior(_:))
- [restorationBehavior(_:)](/documentation/swiftui/scene/restorationbehavior(_:))
- [SceneLaunchBehavior](/documentation/swiftui/scenelaunchbehavior)
- [SceneRestorationBehavior](/documentation/swiftui/scenerestorationbehavior)
- [persistentSystemOverlays(_:)](/documentation/swiftui/scene/persistentsystemoverlays(_:))
- [windowToolbarFullScreenVisibility(_:)](/documentation/swiftui/view/windowtoolbarfullscreenvisibility(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
