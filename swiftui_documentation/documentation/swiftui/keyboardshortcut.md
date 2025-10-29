---
title: KeyboardShortcut
description: Keyboard shortcuts describe combinations of keys on a keyboard that the user can press in order to activate a button or toggle.
source: https://developer.apple.com/documentation/swiftui/keyboardshortcut
timestamp: 2025-10-29T00:11:01.721Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# KeyboardShortcut

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Keyboard shortcuts describe combinations of keys on a keyboard that the user can press in order to activate a button or toggle.

```swift
struct KeyboardShortcut
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting standard shortcuts

- [cancelAction](/documentation/swiftui/keyboardshortcut/cancelaction) The standard keyboard shortcut for cancelling the in-progress action or dismissing a prompt, consisting of the Escape (⎋) key and no modifiers.
- [defaultAction](/documentation/swiftui/keyboardshortcut/defaultaction) The standard keyboard shortcut for the default button, consisting of the Return (↩) key and no modifiers.

## Creating a shortcut

- [init(_:modifiers:)](/documentation/swiftui/keyboardshortcut/init(_:modifiers:)) Creates a new keyboard shortcut with the given key equivalent and set of modifier keys.
- [key](/documentation/swiftui/keyboardshortcut/key) The key equivalent that the user presses in conjunction with any specified modifier keys to activate the shortcut.
- [modifiers](/documentation/swiftui/keyboardshortcut/modifiers) The modifier keys that the user presses in conjunction with a key equivalent to activate the shortcut.

## Creating a localized shortcut

- [init(_:modifiers:localization:)](/documentation/swiftui/keyboardshortcut/init(_:modifiers:localization:)) Creates a new keyboard shortcut with the given key equivalent and set of modifier keys.
- [localization](/documentation/swiftui/keyboardshortcut/localization-swift.property) The localization strategy to apply to this shortcut.
- [KeyboardShortcut.Localization](/documentation/swiftui/keyboardshortcut/localization-swift.struct) Options for how a keyboard shortcut participates in automatic localization.

## Creating keyboard shortcuts

- [keyboardShortcut(_:)](/documentation/swiftui/view/keyboardshortcut(_:))
- [keyboardShortcut(_:modifiers:)](/documentation/swiftui/view/keyboardshortcut(_:modifiers:))
- [keyboardShortcut(_:modifiers:localization:)](/documentation/swiftui/view/keyboardshortcut(_:modifiers:localization:))
- [keyboardShortcut](/documentation/swiftui/environmentvalues/keyboardshortcut)
- [KeyEquivalent](/documentation/swiftui/keyequivalent)
- [EventModifiers](/documentation/swiftui/eventmodifiers)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
