---
title: keyboardShortcut(_:modifiers:localization:)
description: Defines a keyboard shortcut for opening new scene windows.
source: https://developer.apple.com/documentation/swiftui/scene/keyboardshortcut(_:modifiers:localization:)
timestamp: 2025-10-29T00:09:57.287Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# keyboardShortcut(_:modifiers:localization:)

**Available on:** macOS 13.0+

> Defines a keyboard shortcut for opening new scene windows.

```swift
nonisolated func keyboardShortcut(_ key: KeyEquivalent, modifiers: EventModifiers = .command, localization: KeyboardShortcut.Localization = .automatic) -> some Scene
```

## Parameters

**key**

The key equivalent the user presses to present the scene.



**modifiers**

The modifier keys required to perform the shortcut.



**localization**

The localization style to apply to the shortcut.



## Return Value

A scene that can be presented with a keyboard shortcut.

## Discussion

A scene’s keyboard shortcut is bound to the command it adds for creating new windows (in the case of `WindowGroup` and `DocumentGroup`) or bringing a singleton window forward (in the case of `Window` and, on macOS, `Settings`). Pressing the keyboard shortcut is equivalent to selecting the menu command.

In cases where a command already has a keyboard shortcut, the scene’s keyboard shortcut is used instead. For example, `WindowGroup` normally creates a File > New Window menu command whose keyboard shortcut is `⌘N`. The following code changes it to `⌥⌘N`:

```swift
WindowGroup {
    ContentView()
}
.keyboardShortcut("n", modifiers: [.option, .command])
```

### Localization

Provide a `localization` value to specify how this shortcut should be localized.

Given that `key` is always defined in relation to the US-English keyboard layout, it might be hard to reach on different international layouts. For example the shortcut `⌘[` works well for the US layout but is hard to reach for German users, where `[` is available by pressing `⌥5`, making users type `⌥⌘5`. The automatic keyboard shortcut remapping re-assigns the shortcut to an appropriate replacement, `⌘Ö` in this case.

Providing the option [custom](/documentation/swiftui/keyboardshortcut/localization-swift.struct/custom) disables the automatic localization for this shortcut to tell the system that internationalization is taken care of in a different way.

## Setting commands

- [commands(content:)](/documentation/swiftui/scene/commands(content:))
- [commandsRemoved()](/documentation/swiftui/scene/commandsremoved())
- [commandsReplaced(content:)](/documentation/swiftui/scene/commandsreplaced(content:))
- [keyboardShortcut(_:)](/documentation/swiftui/scene/keyboardshortcut(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
