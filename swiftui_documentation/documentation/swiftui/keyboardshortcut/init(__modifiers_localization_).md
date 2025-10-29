---
title: init(_:modifiers:localization:)
description: Creates a new keyboard shortcut with the given key equivalent and set of modifier keys.
source: https://developer.apple.com/documentation/swiftui/keyboardshortcut/init(_:modifiers:localization:)
timestamp: 2025-10-29T00:14:42.642Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [keyboardshortcut](/documentation/swiftui/keyboardshortcut)

**Initializer**

# init(_:modifiers:localization:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> Creates a new keyboard shortcut with the given key equivalent and set of modifier keys.

```swift
init(_ key: KeyEquivalent, modifiers: EventModifiers = .command, localization: KeyboardShortcut.Localization)
```

## Discussion

Use the `localization` parameter to specify a localization strategy for this shortcut.

## Creating a localized shortcut

- [localization](/documentation/swiftui/keyboardshortcut/localization-swift.property)
- [KeyboardShortcut.Localization](/documentation/swiftui/keyboardshortcut/localization-swift.struct)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
