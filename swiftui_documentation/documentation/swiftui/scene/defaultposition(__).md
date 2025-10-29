---
title: defaultPosition(_:)
description: Sets a default position for a window.
source: https://developer.apple.com/documentation/swiftui/scene/defaultposition(_:)
timestamp: 2025-10-29T00:14:42.486Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# defaultPosition(_:)

**Available on:** macOS 13.0+

> Sets a default position for a window.

```swift
nonisolated func defaultPosition(_ position: UnitPoint) -> some Scene
```

## Parameters

**position**

A [Unit Point](/documentation/swiftui/unitpoint) that specifies where to place a newly opened window relative to the screen bounds.



## Return Value

A scene that uses a default position for new windows.

## Discussion

The first time your app opens a window from a particular scene declaration, the system places the window at the center of the screen by default. For scene types that support multiple simultaneous windows, the system offsets each additional window by a small amount to avoid completely obscuring existing windows.

You can override the default placement of the first window by applying a scene modifier that indicates where to place the window relative to the screen bounds. For example, you can request that the system place a new window in the bottom trailing corner of the screen:

```swift
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .defaultPosition(.bottomTrailing)
    }
}
```

The system aligns the point in the window that corresponds to the specified [Unit Point](/documentation/swiftui/unitpoint) with the point in the screen that corresponds to the same unit point.

You typically use one of the predefined unit points — like [bottom Trailing](/documentation/swiftui/unitpoint/bottomtrailing) in the above example — but you can also use a custom unit point. For example, the following modifier aligns the point that’s one quarter of the way from the leading edge of the window with the point that’s one quarter of the way from the leading edge of the screen, while centering the window in the y-dimension:

```swift
WindowGroup {
    ContentView()
}
.defaultPosition(UnitPoint(x: 0.25, y: 0.5))
```

The modifier affects any scene type that creates windows in macOS, namely:

- [Window Group](/documentation/swiftui/windowgroup)
- [Window](/documentation/swiftui/window)
- [Document Group](/documentation/swiftui/documentgroup)
- [Settings](/documentation/swiftui/settings)

The value that you provide acts only as an initial default. During state restoration, the system restores the window to the position that it last occupied.

## Positioning a window

- [WindowLevel](/documentation/swiftui/windowlevel)
- [windowLevel(_:)](/documentation/swiftui/scene/windowlevel(_:))
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
