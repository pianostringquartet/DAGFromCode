---
title: ImportFromDevicesCommands
description: A built-in set of commands that enables importing content from nearby devices.
source: https://developer.apple.com/documentation/swiftui/importfromdevicescommands
timestamp: 2025-10-29T00:14:21.423Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ImportFromDevicesCommands

**Available on:** macOS 12.0+

> A built-in set of commands that enables importing content from nearby devices.

```swift
struct ImportFromDevicesCommands
```

## Overview

This set of commands adds items based on nearby devices and capabilities, like taking photos or scanning documents. Views can receive imported content from these menu items by using the [importsItemProviders(_:onImport:)](/documentation/swiftui/view/importsitemproviders(_:onimport:)) modifier.

These commands are optional and you can explicitly request them by passing a value of this type to the [commands(content:)](/documentation/swiftui/scene/commands(content:)) modifier.

## Conforms To

- [Commands](/documentation/swiftui/commands)

## Creating the command group

- [init()](/documentation/swiftui/importfromdevicescommands/init()) Creates a new set of device import commands.

## Getting built-in command groups

- [SidebarCommands](/documentation/swiftui/sidebarcommands)
- [TextEditingCommands](/documentation/swiftui/texteditingcommands)
- [TextFormattingCommands](/documentation/swiftui/textformattingcommands)
- [ToolbarCommands](/documentation/swiftui/toolbarcommands)
- [InspectorCommands](/documentation/swiftui/inspectorcommands)
- [EmptyCommands](/documentation/swiftui/emptycommands)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
