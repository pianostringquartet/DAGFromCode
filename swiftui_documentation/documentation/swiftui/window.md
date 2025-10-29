---
title: Window
description: A scene that presents its content in a single, unique window.
source: https://developer.apple.com/documentation/swiftui/window
timestamp: 2025-10-29T00:09:21.990Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Window

**Available on:** macOS 13.0+, visionOS 26.0+

> A scene that presents its content in a single, unique window.

```swift
struct Window<Content> where Content : View
```

## Overview

Use a `Window` scene to augment the main interface of your app with a window that gives people access to supplemental functionality. For example, you can create a secondary window in a mail reader app that enables people to view the status of their account connections:

```swift
 @main
 struct Mail: App {
     var body: some Scene {
         WindowGroup {
             MailViewer()
         }
         Window("Connection Doctor", id: "connection-doctor") {
             ConnectionDoctor()
         }
     }
 }
```

Provide a title as the first argument to the window’s intializer. The system uses the title to identify the window to people using your app in the window’s title bar or in the list of available singleton windows that the Windows menu displays automatically.

> [!NOTE]
> You can override the title in the window’s title bar by adding one of the [navigationTitle(_:)](/documentation/swiftui/view/navigationtitle(_:)) view modifiers to the window’s content. This enables you to dynamically update the title bar.

> [!NOTE]
> In visionOS, Windows that you create using [Window](/documentation/swiftui/window) don’t support the volumetric window style.

### Open a window programmatically

People open the window by selecting it in the Windows menu, but you can also open the window programmatically using the [open Window](/documentation/swiftui/environmentvalues/openwindow) action that you read from the environment. Use the `id` parameter that you initialize the window with to indicate which window to open. For example, you can create a button to open the window from the previous example:

```swift
struct OpenConnectionDoctorButton: View {
    @Environment(\.openWindow) private var openWindow

    var body: some View {
        Button("Connection doctor") {
            openWindow(id: "connection-doctor") // Match the window's identifier.
        }
    }
}
```

If the window is already open when you call this action, the action brings the open window to the front. Be sure to use unique identifiers across all of the `Window` and [Window Group](/documentation/swiftui/windowgroup) instances that you define.

### Dismiss a window programmatically

The system provides people with controls to close windows, but you can also close a window programmatically using the [dismiss](/documentation/swiftui/environmentvalues/dismiss) action from within the window’s view hierarchy. For example, you can include a button in the connection doctor view that dismisses the view:

```swift
struct ConnectionDoctor: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack {
            // ...

            Button("Dismiss") {
                dismiss()
            }
        }
    }
}
```

The dismiss action doesn’t close the window if you call it from a modal — like a sheet or a popover — that you present from within the window. In that case, the action dismisses the modal presentation instead.

### Use a window as the main scene

You can use a window as the main scene of your app when multi-window functionality isn’t appropriate. For example, it might not make sense to display more than one window for a video call app that relies on a hardware resource, like a camera:

```swift
@main
struct VideoCall: App {
    var body: some Scene {
        Window("VideoCall", id: "main") {
            CameraView()
        }
    }
}
```

If your app uses a single window as its primary scene, the app quits when the window closes. This behavior differs from an app that uses a [Window Group](/documentation/swiftui/windowgroup) as its primary scene, where the app continues to run even after closing all of its windows.

> [!NOTE]
> In most cases it’s best to use a [Window Group](/documentation/swiftui/windowgroup) to represent the main scene of your app. A window group provides multi-window functionality on platforms that support it, like iPadOS and macOS, and makes it easier to share code across platforms.

## Conforms To

- [Scene](/documentation/swiftui/scene)

## Creating a window

- [init(_:id:content:)](/documentation/swiftui/window/init(_:id:content:)) Creates a window with a title and an identifier.

## Creating windows

- [WindowGroup](/documentation/swiftui/windowgroup)
- [UtilityWindow](/documentation/swiftui/utilitywindow)
- [WindowStyle](/documentation/swiftui/windowstyle)
- [windowStyle(_:)](/documentation/swiftui/scene/windowstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
