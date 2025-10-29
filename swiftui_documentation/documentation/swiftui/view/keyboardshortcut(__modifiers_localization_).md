---
title: keyboardShortcut(_:modifiers:localization:)
description: Defines a keyboard shortcut and assigns it to the modified control.
source: https://developer.apple.com/documentation/swiftui/view/keyboardshortcut(_:modifiers:localization:)
timestamp: 2025-10-29T00:14:19.109Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# keyboardShortcut(_:modifiers:localization:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> Defines a keyboard shortcut and assigns it to the modified control.

```swift
nonisolated func keyboardShortcut(_ key: KeyEquivalent, modifiers: EventModifiers = .command, localization: KeyboardShortcut.Localization) -> some View
```

## Discussion

Pressing the control’s shortcut while the control is anywhere in the frontmost window or scene, or anywhere in the macOS main menu, is equivalent to direct interaction with the control to perform its primary action.

The target of a keyboard shortcut is resolved in a leading-to-trailing, depth-first traversal of one or more view hierarchies. On macOS, the system looks in the key window first, then the main window, and then the command groups; on other platforms, the system looks in the active scene, and then the command groups.

If multiple controls are associated with the same shortcut, the first one found is used.

### Localization

Provide a `localization` value to specify how this shortcut should be localized. Given that `key` is always defined in relation to the US-English keyboard layout, it might be hard to reach on different international layouts. For example the shortcut `⌘[` works well for the US layout but is hard to reach for German users, where `[` is available by pressing `⌥5`, making users type `⌥⌘5`. The automatic keyboard shortcut remapping re-assigns the shortcut to an appropriate replacement, `⌘Ö` in this case.

Certain shortcuts carry information about directionality. For instance, `⌘[` can reveal a previous view. Following the layout direction of the UI, this shortcut will be automatically mirrored to `⌘]`. However, this does not apply to items such as “Align Left `⌘{`”, which will be “left” independently of the layout direction. When the shortcut shouldn’t follow the directionality of the UI, but rather be the same in both right-to-left and left-to-right directions, using [without Mirroring](/documentation/swiftui/keyboardshortcut/localization-swift.struct/withoutmirroring) will prevent the system from flipping it.

```swift
var body: some Commands {
    CommandMenu("Card") {
        Button("Align Left") { ... }
            .keyboardShortcut("{",
                 modifiers: .option,
                 localization: .withoutMirroring)
        Button("Align Right") { ... }
            .keyboardShortcut("}",
                 modifiers: .option,
                 localization: .withoutMirroring)
    }
}
```

Lastly, providing the option [custom](/documentation/swiftui/keyboardshortcut/localization-swift.struct/custom) disables the automatic localization for this shortcut to tell the system that internationalization is taken care of in a different way.

## Creating keyboard shortcuts

- [keyboardShortcut(_:)](/documentation/swiftui/view/keyboardshortcut(_:))
- [keyboardShortcut(_:modifiers:)](/documentation/swiftui/view/keyboardshortcut(_:modifiers:))
- [keyboardShortcut](/documentation/swiftui/environmentvalues/keyboardshortcut)
- [KeyboardShortcut](/documentation/swiftui/keyboardshortcut)
- [KeyEquivalent](/documentation/swiftui/keyequivalent)
- [EventModifiers](/documentation/swiftui/eventmodifiers)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
