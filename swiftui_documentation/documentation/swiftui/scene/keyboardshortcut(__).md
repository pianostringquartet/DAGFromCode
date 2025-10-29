---
title: keyboardShortcut(_:)
description: Defines a keyboard shortcut for opening new scene windows.
source: https://developer.apple.com/documentation/swiftui/scene/keyboardshortcut(_:)
timestamp: 2025-10-29T00:10:17.368Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# keyboardShortcut(_:)

**Available on:** macOS 13.0+

> Defines a keyboard shortcut for opening new scene windows.

```swift
nonisolated func keyboardShortcut(_ shortcut: KeyboardShortcut?) -> some Scene
```

## Parameters

**shortcut**

The keyboard shortcut for presenting the scene, or `nil`.



## Return Value

A scene that can be presented with a keyboard shortcut.

## Discussion

A scene’s keyboard shortcut is bound to the command it adds for creating new windows (in the case of `WindowGroup` and `DocumentGroup`) or bringing a singleton window forward (in the case of `Window` and, on macOS, `Settings` and `UtilityWindow`). Pressing the keyboard shortcut is equivalent to selecting the menu command.

In cases where a command already has a keyboard shortcut, the scene’s keyboard shortcut is used instead. For example, `WindowGroup` normally creates a File > New Window menu command whose keyboard shortcut is `⌘N`. The following code changes it to something based on dynamic state:

```swift
@main
struct Notes: App {
    @State private var newWindowShortcut: KeyboardShortcut? = ...

    var body: some Scene {
        WindowGroup {
            ContentView($newWindowShortcut)
        }
        .keyboardShortcut(newWindowShortcut)
    }
}
```

If `shortcut` is `nil`, the scene’s presentation command will not be associated with a keyboard shortcut, even if SwiftUI normally assigns one automatically.

## Setting commands

- [commands(content:)](/documentation/swiftui/scene/commands(content:))
- [commandsRemoved()](/documentation/swiftui/scene/commandsremoved())
- [commandsReplaced(content:)](/documentation/swiftui/scene/commandsreplaced(content:))
- [keyboardShortcut(_:modifiers:localization:)](/documentation/swiftui/scene/keyboardshortcut(_:modifiers:localization:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
