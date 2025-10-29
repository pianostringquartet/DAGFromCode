---
title: commandsReplaced(content:)
description: Replaces all commands defined by the modified scene with the commands from the builder.
source: https://developer.apple.com/documentation/swiftui/scene/commandsreplaced(content:)
timestamp: 2025-10-29T00:11:35.113Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# commandsReplaced(content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Replaces all commands defined by the modified scene with the commands from the builder.

```swift
nonisolated func commandsReplaced<Content>(@CommandsBuilder content: () -> Content) -> some Scene where Content : Commands
```

## Parameters

**content**

A `Commands` builder whose output will be used to replace the commands normally provided by the modified scene.



## Return Value

A scene that replaces any commands defined by its children with alternative content.

## Discussion

`WindowGroup`, `Window`, and other scene types all have an associated set of commands that they include by default. Apply this modifier to a scene to replace those commands with the output from the given builder.

For example, the following code adds a scene for showing the contents of the pasteboard in a dedicated window. We replace the scene’s default Window > Clipboard menu command with a custom Edit > Show Clipboard command that we place next to the other pasteboard commands.

```swift
@main
struct Example: App {
    @Environment(\.openWindow) var openWindow

    var body: some Scene {
        ...

        Window("Clipboard", id: "clipboard") {
            ClipboardContentView()
        }
        .commandsReplaced {
            CommandGroup(after: .pasteboard) {
                Section {
                    Button("Show Clipboard") {
                        openWindow(id: "clipboard")
                    }
                }
            }
        }
    }
}
```

## Defining commands

- [commands(content:)](/documentation/swiftui/scene/commands(content:))
- [commandsRemoved()](/documentation/swiftui/scene/commandsremoved())
- [Commands](/documentation/swiftui/commands)
- [CommandMenu](/documentation/swiftui/commandmenu)
- [CommandGroup](/documentation/swiftui/commandgroup)
- [CommandsBuilder](/documentation/swiftui/commandsbuilder)
- [CommandGroupPlacement](/documentation/swiftui/commandgroupplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
