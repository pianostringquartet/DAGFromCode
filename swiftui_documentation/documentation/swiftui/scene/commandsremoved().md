---
title: commandsRemoved()
description: Removes all commands defined by the modified scene.
source: https://developer.apple.com/documentation/swiftui/scene/commandsremoved()
timestamp: 2025-10-29T00:09:21.682Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# commandsRemoved()

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Removes all commands defined by the modified scene.

```swift
nonisolated func commandsRemoved() -> some Scene
```

## Return Value

A scene that excludes any commands defined by its children.

## Discussion

`WindowGroup`, `Window`, and other scene types all have an associated set of commands that they include by default. Apply this modifier to a scene to exclude those commands.

For example, the following code adds a scene for presenting the details of an individual data model in a separate window. To ensure that the window can only appear programmatically, we remove the scene’s commands, including File > New Note Window.

```swift
@main
struct Example: App {
    var body: some Scene {
        ...

        WindowGroup("Note", id: "note", for: Note.ID.self) {
            NoteDetailView(id: $0)
        }
        .commandsRemoved()
    }
}
```

## Defining commands

- [commands(content:)](/documentation/swiftui/scene/commands(content:))
- [commandsReplaced(content:)](/documentation/swiftui/scene/commandsreplaced(content:))
- [Commands](/documentation/swiftui/commands)
- [CommandMenu](/documentation/swiftui/commandmenu)
- [CommandGroup](/documentation/swiftui/commandgroup)
- [CommandsBuilder](/documentation/swiftui/commandsbuilder)
- [CommandGroupPlacement](/documentation/swiftui/commandgroupplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
