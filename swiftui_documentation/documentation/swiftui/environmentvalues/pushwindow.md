---
title: pushWindow
description: A window presentation action stored in a view’s environment.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/pushwindow
timestamp: 2025-10-29T00:09:37.375Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# pushWindow

**Available on:** visionOS 2.0+

> A window presentation action stored in a view’s environment.

```swift
var pushWindow: PushWindowAction { get }
```

## Discussion

This action opens the requested window in place of the window the action is called from. The scene this action is called from will be backgrounded. The requested scene will be center-aligned with the backgrounded scene. The requested scene will have a default size that matches the size of the backgrounded scene. Closing the requested window will result in the backgrounded scene reappearing.

Call [dismiss Window](/documentation/swiftui/environmentvalues/dismisswindow) from the pushed window to dismiss the pushed window and show the backgrounded window.

Calling this action from a pushed window is not allowed.

Alternatively, use [open Window](/documentation/swiftui/environmentvalues/openwindow) to open a window separate from the window the action is called from.

Use the `pushWindow` environment value to get an [Push Window Action](/documentation/swiftui/pushwindowaction) instance for a given [Environment](/documentation/swiftui/environment). Then call the instance to push a window. You call the instance directly because it defines a [callAsFunction(id:)](/documentation/swiftui/pushwindowaction/callasfunction(id:)) method that Swift calls when you call the instance.

For example, you can define a button that pushes a video preview from an editor window:

```swift
@main
struct VideoEditor: App {
    var body: some Scene {
        WindowGroup(id: "editor") {
            EditorView()
        }

        WindowGroup(id: "viewer") {
            VideoView()
        }
    }
}

struct EditorView: View {
    @Environment(\.pushWindow) private var pushWindow

    var body: some View {
        Button("Play", systemImage: "play.fill") {
            pushWindow(id: "viewer")
        }
    }
}
```

You indicate which scene to push by providing one of the following:

- A string identifier that you pass through the `id` parameter, as in the above example.
- A `value` parameter that has a type that matches the type that you specify in the scene’s initializer.
- Both an identifier and a value. This enables you to define multiple window groups that take input values of the same type like a [UUID](/documentation/Foundation/UUID).

Use the first option to target either a [Window Group](/documentation/swiftui/windowgroup) or a [Window](/documentation/swiftui/window) scene in your app that has a matching identifier. For a [Window Group](/documentation/swiftui/windowgroup), the system creates a new window for the group. If the window group presents data, the system provides the default value or `nil` to the window’s root view. If the targeted scene is a `Window`, the system orders it to the front.

Use the other two options to target a [Window Group](/documentation/swiftui/windowgroup) and provide a value to present. If the interface already has a window from the group that is presenting the specified value, the system brings the window to the front. Otherwise, the system creates a new window and passes a binding to the specified value.

## Actions

- [dismiss](/documentation/swiftui/environmentvalues/dismiss)
- [dismissSearch](/documentation/swiftui/environmentvalues/dismisssearch)
- [dismissWindow](/documentation/swiftui/environmentvalues/dismisswindow)
- [openImmersiveSpace](/documentation/swiftui/environmentvalues/openimmersivespace)
- [dismissImmersiveSpace](/documentation/swiftui/environmentvalues/dismissimmersivespace)
- [newDocument](/documentation/swiftui/environmentvalues/newdocument)
- [openDocument](/documentation/swiftui/environmentvalues/opendocument)
- [openURL](/documentation/swiftui/environmentvalues/openurl)
- [openWindow](/documentation/swiftui/environmentvalues/openwindow)
- [purchase](/documentation/swiftui/environmentvalues/purchase)
- [refresh](/documentation/swiftui/environmentvalues/refresh)
- [rename](/documentation/swiftui/environmentvalues/rename)
- [resetFocus](/documentation/swiftui/environmentvalues/resetfocus)
- [openSettings](/documentation/swiftui/environmentvalues/opensettings)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
