---
title: defaultWindowPlacement(_:)
description: Defines a function used for determining the default placement of windows.
source: https://developer.apple.com/documentation/swiftui/scene/defaultwindowplacement(_:)
timestamp: 2025-10-29T00:12:58.067Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# defaultWindowPlacement(_:)

**Available on:** macOS 15.0+, visionOS 2.0+

> Defines a function used for determining the default placement of windows.

```swift
nonisolated func defaultWindowPlacement(_ makePlacement: @escaping (WindowLayoutRoot, WindowPlacementContext) -> WindowPlacement) -> some Scene
```

## Parameters

**makePlacement**

A closure to generate the default window placement.



## Discussion

Use this scene modifier to indicate a default initial size and position for a new window that the system creates from a [Scene](/documentation/swiftui/scene) declaration.

On macOS, you can use the screen’s bounds to place the window. For example, you can specify that the window is always placed 140 points from the bottom of the screen:

```swift
struct MyApp: App {
    var body: some Scene {
        ...

        Window("Status", id: "status") {
            StatusView()
        }
        .windowResizability(.contentSize)
        .defaultWindowPlacement { content, context in
            let displayBounds = context.defaultDisplay.visibleRect
            let size = content.sizeThatFits(.unspecified)
            let position = CGPoint(
                x: displayBounds.midX - (size.width / 2),
                y: displayBounds.maxY - size.height - 140)
            return WindowPlacement(position: position, size: size)
        }
    }
}
```

On visionOS, the system always places the first window relative to where the person is looking. The system ignores calls to `defaultWindowPlacement(_:)`.

You can place any subsequent windows relative to existing ones by returning one of the methods defined by [Position](/documentation/swiftui/windowplacement/position) with the existing window. For example, you can align the new window with the trailing edge of the `Content` window:

```swift
struct MyApp: App {
    @Environment(\.openWindow) private var openWindow

    var body: some Scene {
        WindowGroup("Content", id: "content") {
            Button("Open status window") {
                openWindow(id: "status")
            }
        }

        WindowGroup("Status", id: "status") {
            StatusView()
        }
        .windowResizability(.contentSize)
        .defaultWindowPlacement { content, context in
            if let contentWindow = context.windows.first(
            where: { $0.id == "content" }) {
                WindowPlacement(.trailing(contentWindow))
            } else {
                WindowPlacement()
            }
        }
    }
}
```

The placement that your function returns acts as a default for when the window first appears. People can later resize and move the window using interface controls that the system provides. Also, during state restoration, the system restores the window to it’s most recent size and position, rather than the default placement.

For more information on configuring how scenes behave with state restoration, see `Scene.stateRestoration(_:)`.

## Positioning a window

- [defaultPosition(_:)](/documentation/swiftui/scene/defaultposition(_:))
- [WindowLevel](/documentation/swiftui/windowlevel)
- [windowLevel(_:)](/documentation/swiftui/scene/windowlevel(_:))
- [WindowLayoutRoot](/documentation/swiftui/windowlayoutroot)
- [WindowPlacement](/documentation/swiftui/windowplacement)
- [windowIdealPlacement(_:)](/documentation/swiftui/scene/windowidealplacement(_:))
- [WindowPlacementContext](/documentation/swiftui/windowplacementcontext)
- [WindowProxy](/documentation/swiftui/windowproxy)
- [DisplayProxy](/documentation/swiftui/displayproxy)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
