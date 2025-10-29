---
title: OpenWindowAction
description: An action that presents a window.
source: https://developer.apple.com/documentation/swiftui/openwindowaction
timestamp: 2025-10-29T00:11:52.014Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# OpenWindowAction

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> An action that presents a window.

```swift
@MainActor @preconcurrency struct OpenWindowAction
```

## Overview

Use the [open Window](/documentation/swiftui/environmentvalues/openwindow) environment value to get the instance of this structure for a given [Environment](/documentation/swiftui/environment). Then call the instance to open a window. You call the instance directly because it defines a [callAsFunction(id:)](/documentation/swiftui/openwindowaction/callasfunction(id:)) method that Swift calls when you call the instance.

For example, you can define a button that opens a new mail viewer window:

```swift
@main
struct Mail: App {
    var body: some Scene {
        WindowGroup(id: "mail-viewer") {
            MailViewer()
        }
    }
}

struct NewViewerButton: View {
    @Environment(\.openWindow) private var openWindow

    var body: some View {
        Button("Open new mail viewer") {
            openWindow(id: "mail-viewer")
        }
    }
}
```

You indicate which scene to open by providing one of the following:

- A string identifier that you pass through the `id` parameter, as in the above example.
- A `value` parameter that has a type that matches the type that you specify in the scene’s initializer.
- Both an identifier and a value. This enables you to define multiple window groups that take input values of the same type, like a [UUID](/documentation/Foundation/UUID).

Use the first option to target either a [Window Group](/documentation/swiftui/windowgroup) or a [Window](/documentation/swiftui/window) scene in your app that has a matching identifier. For a `WindowGroup`, the system creates a new window for the group. If the window group presents data, the system provides the default value or `nil` to the window’s root view. If the targeted scene is a `Window`, the system orders it to the front.

Use the other two options to target a `WindowGroup` and provide a value to present. If the interface already has a window from the group that’s presenting the specified value, the system brings the window to the front. Otherwise, the system creates a new window and passes a binding to the specified value.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Calling the action

- [callAsFunction(id:)](/documentation/swiftui/openwindowaction/callasfunction(id:)) Opens a window that’s associated with the specified identifier.
- [callAsFunction(id:value:)](/documentation/swiftui/openwindowaction/callasfunction(id:value:)) Opens a window defined by the window group that presents the specified value type and that’s associated with the specified identifier.
- [callAsFunction(value:)](/documentation/swiftui/openwindowaction/callasfunction(value:)) Opens a window defined by a window group that presents the type of the specified value.

## Structures

- [OpenWindowAction.SharingBehavior](/documentation/swiftui/openwindowaction/sharingbehavior)

## Instance Methods

- [callAsFunction(id:sharingBehavior:)](/documentation/swiftui/openwindowaction/callasfunction(id:sharingbehavior:)) Opens a window that’s associated with the specified identifier, using the specified sharing sharingBehavior..
- [callAsFunction(id:value:sharingBehavior:)](/documentation/swiftui/openwindowaction/callasfunction(id:value:sharingbehavior:)) Opens a window defined by the window group that presents the specified value type and that’s associated with the specified identifier, using the specified sharingBehavior.
- [callAsFunction(value:sharingBehavior:)](/documentation/swiftui/openwindowaction/callasfunction(value:sharingbehavior:)) Opens a window defined by a window group that presents the type of the specified value, using the specified sharingBehavior.

## Opening windows

- [Presenting windows and spaces](/documentation/visionOS/presenting-windows-and-spaces)
- [supportsMultipleWindows](/documentation/swiftui/environmentvalues/supportsmultiplewindows)
- [openWindow](/documentation/swiftui/environmentvalues/openwindow)
- [PushWindowAction](/documentation/swiftui/pushwindowaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
