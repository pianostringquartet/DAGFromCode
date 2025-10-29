---
title: focusedObject(_:)
description: Creates a new view that exposes the provided object to other views whose whose state depends on the focused view hierarchy.
source: https://developer.apple.com/documentation/swiftui/view/focusedobject(_:)
timestamp: 2025-10-29T00:15:28.388Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# focusedObject(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a new view that exposes the provided object to other views whose whose state depends on the focused view hierarchy.

```swift
nonisolated func focusedObject<T>(_ object: T) -> some View where T : ObservableObject
```

## Parameters

**object**

The observable object to associate with focus.



## Return Value

A view that supplies an observable object when in focus.

## Discussion

Use this method instead of [focusedSceneObject(_:)](/documentation/swiftui/view/focusedsceneobject(_:)) when your scene includes multiple focusable views with their own associated data, and you need an app- or scene-scoped element like a command or toolbar item that operates on the data associated with whichever view currently has focus. Each focusable view can supply its own object:

```swift
struct MessageView: View {
    @StateObject private var message = Message(...)

    var body: some View {
        TextField(...)
            .focusedObject(message)
    }
}
```

Interested views can then use the [Focused Object](/documentation/swiftui/focusedobject) property wrapper to observe and update the focused view’s object. In this example, an app command updates the focused view’s data, and is automatically disabled when focus is in an unrelated part of the scene:

```swift
struct MessageCommands: Commands {
    @FocusedObject private var message: Message?

    var body: some Commands {
        CommandGroup(after: .pasteboard) {
            Button("Add Duck to Message") {
                message?.text.append(" 🦆")
            }
            .keyboardShortcut("d")
            .disabled(message == nil)
        }
    }
}
```

## Exposing reference types to focused views

- [focusedSceneObject(_:)](/documentation/swiftui/view/focusedsceneobject(_:))
- [FocusedObject](/documentation/swiftui/focusedobject)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
