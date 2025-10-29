---
title: windowLevel(_:)
description: Sets the window level of this scene.
source: https://developer.apple.com/documentation/swiftui/scene/windowlevel(_:)
timestamp: 2025-10-29T00:10:10.905Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# windowLevel(_:)

**Available on:** macOS 15.0+

> Sets the window level of this scene.

```swift
nonisolated func windowLevel(_ level: WindowLevel) -> some Scene
```

## Parameters

**level**

The desired window level



## Discussion

```swift
Window("Utility Window", id: "...") {
    UtilityContent()
}
.windowLevel(.floating)
```

## Positioning a window

- [defaultPosition(_:)](/documentation/swiftui/scene/defaultposition(_:))
- [WindowLevel](/documentation/swiftui/windowlevel)
- [WindowLayoutRoot](/documentation/swiftui/windowlayoutroot)
- [WindowPlacement](/documentation/swiftui/windowplacement)
- [defaultWindowPlacement(_:)](/documentation/swiftui/scene/defaultwindowplacement(_:))
- [windowIdealPlacement(_:)](/documentation/swiftui/scene/windowidealplacement(_:))
- [WindowPlacementContext](/documentation/swiftui/windowplacementcontext)
- [WindowProxy](/documentation/swiftui/windowproxy)
- [DisplayProxy](/documentation/swiftui/displayproxy)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
