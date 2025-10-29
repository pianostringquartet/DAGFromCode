---
title: focusedSceneObject(_:)
description: Creates a new view that exposes the provided object to other views whose whose state depends on the active scene.
source: https://developer.apple.com/documentation/swiftui/view/focusedsceneobject(_:)
timestamp: 2025-10-29T00:11:56.579Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# focusedSceneObject(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a new view that exposes the provided object to other views whose whose state depends on the active scene.

```swift
nonisolated func focusedSceneObject<T>(_ object: T) -> some View where T : ObservableObject
```

## Parameters

**object**

The observable object to associate with the scene.



## Return Value

A view that supplies an observable object while the scene is active.

## Discussion

Use this method instead of [focusedObject(_:)](/documentation/swiftui/view/focusedobject(_:)) for observable objects that must be visible regardless of where focus is located in the active scene. This is sometimes needed for things like main menu and discoverability HUD commands that observe and update data from the active scene but aren’t concerned with what the user is actually focused on. The scene’s root view can supply the scene’s state object:

```swift
struct RootView: View {
    @StateObject private var sceneData = SceneData()

    var body: some View {
        NavigationSplitView {
            ...
        }
        .focusedSceneObject(sceneData)
    }
}
```

Interested views can then use the [Focused Object](/documentation/swiftui/focusedobject) property wrapper to observe and update the active scene’s state object. In this example, an app command updates the active scene’s data, and is enabled as long as any scene is active.

```swift
struct MessageCommands: Commands {
    @FocusedObject private var sceneData: SceneData?

    var body: some Commands {
        CommandGroup(after: .newItem) {
            Button("New Message") {
                sceneData?.addMessage()
            }
            .keyboardShortcut("n", modifiers: [.option, .command])
            .disabled(sceneData == nil)
        }
    }
}
```

## Exposing reference types to focused views

- [focusedObject(_:)](/documentation/swiftui/view/focusedobject(_:))
- [FocusedObject](/documentation/swiftui/focusedobject)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
