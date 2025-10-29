---
title: Clipboard
description: Enable people to move or duplicate items by issuing Copy and Paste commands.
source: https://developer.apple.com/documentation/swiftui/clipboard
timestamp: 2025-10-29T00:10:56.836Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Clipboard

> Enable people to move or duplicate items by issuing Copy and Paste commands.

## Overview

When people issue standard Copy and Cut commands, they expect to move items to the system’s Clipboard, from which they can paste the items into another place in the same app or into another app. Your app can participate in this activity if you add view modifiers that indicate how to respond to the standard commands.



In your copy and paste modifiers, provide or accept types that conform to the [Transferable](/documentation/CoreTransferable/Transferable) protocol, or that inherit from the [NSItem Provider](/documentation/Foundation/NSItemProvider) class. When possible, prefer using transferable items.

## Copying transferable items

- [copyable(_:)](/documentation/swiftui/view/copyable(_:)) Specifies a list of items to copy in response to the system’s Copy command.
- [cuttable(for:action:)](/documentation/swiftui/view/cuttable(for:action:)) Specifies an action that moves items to the Clipboard in response to the system’s Cut command.
- [pasteDestination(for:action:validator:)](/documentation/swiftui/view/pastedestination(for:action:validator:)) Specifies an action that adds validated items to a view in response to the system’s Paste command.

## Copying items using item providers

- [onCopyCommand(perform:)](/documentation/swiftui/view/oncopycommand(perform:)) Adds an action to perform in response to the system’s Copy command.
- [onCutCommand(perform:)](/documentation/swiftui/view/oncutcommand(perform:)) Adds an action to perform in response to the system’s Cut command.
- [onPasteCommand(of:perform:)](/documentation/swiftui/view/onpastecommand(of:perform:)) Adds an action to perform in response to the system’s Paste command.
- [onPasteCommand(of:validator:perform:)](/documentation/swiftui/view/onpastecommand(of:validator:perform:)) Adds an action to perform in response to the system’s Paste command with items that you validate.

## Event handling

- [Gestures](/documentation/swiftui/gestures)
- [Input events](/documentation/swiftui/input-events)
- [Drag and drop](/documentation/swiftui/drag-and-drop)
- [Focus](/documentation/swiftui/focus)
- [System events](/documentation/swiftui/system-events)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
