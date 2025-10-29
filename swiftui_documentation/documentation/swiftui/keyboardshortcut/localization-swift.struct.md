---
title: KeyboardShortcut.Localization
description: Options for how a keyboard shortcut participates in automatic localization.
source: https://developer.apple.com/documentation/swiftui/keyboardshortcut/localization-swift.struct
timestamp: 2025-10-29T00:14:59.866Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [keyboardshortcut](/documentation/swiftui/keyboardshortcut)

**Structure**

# KeyboardShortcut.Localization

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> Options for how a keyboard shortcut participates in automatic localization.

```swift
struct Localization
```

## Overview

A shortcut’s `key` that is defined on an US-English keyboard layout might not be reachable on international layouts. For example the shortcut `⌘[` works well for the US layout but is hard to reach for German users. On the German keyboard layout, pressing `⌥5` will produce `[`, which causes the shortcut to become `⌥⌘5`. If configured, which is the default behavior, automatic shortcut remapping will convert it to `⌘Ö`.

In addition to that, some keyboard shortcuts carry information about directionality. Right-aligning a block of text or seeking forward in context of music playback are such examples. These kinds of shortcuts benefit from the option [without Mirroring](/documentation/swiftui/keyboardshortcut/localization-swift.struct/withoutmirroring) to tell the system that they won’t be flipped when running in a right-to-left context.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting localization strategies

- [automatic](/documentation/swiftui/keyboardshortcut/localization-swift.struct/automatic) Remap shortcuts to their international counterparts, mirrored for right-to-left usage if appropriate.
- [custom](/documentation/swiftui/keyboardshortcut/localization-swift.struct/custom) Don’t use automatic shortcut remapping.
- [withoutMirroring](/documentation/swiftui/keyboardshortcut/localization-swift.struct/withoutmirroring) Don’t mirror shortcuts.

## Creating a localized shortcut

- [init(_:modifiers:localization:)](/documentation/swiftui/keyboardshortcut/init(_:modifiers:localization:))
- [localization](/documentation/swiftui/keyboardshortcut/localization-swift.property)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
