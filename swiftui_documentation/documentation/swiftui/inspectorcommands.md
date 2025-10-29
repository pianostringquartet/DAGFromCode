---
title: InspectorCommands
description: A built-in set of commands for manipulating inspectors.
source: https://developer.apple.com/documentation/swiftui/inspectorcommands
timestamp: 2025-10-29T00:09:29.258Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# InspectorCommands

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> A built-in set of commands for manipulating inspectors.

```swift
struct InspectorCommands
```

## Overview

`InspectorCommands` include a command for toggling the presented state of the inspector with a keyboard shortcut of Control-Command-I.

These commands are optional and can be explicitly requested by passing a value of this type to the [commands(content:)](/documentation/swiftui/scene/commands(content:)) modifier:

```swift
@State var presented = true
WindowGroup {
    MainView()
        .inspector(isPresented: $presented) {
            InspectorView()
        }
}
.commands {
    InspectorCommands()
}
```

## Conforms To

- [Commands](/documentation/swiftui/commands)

## Creating a command

- [init()](/documentation/swiftui/inspectorcommands/init()) A new value describing the built-in inspector-related commands.

## Getting built-in command groups

- [SidebarCommands](/documentation/swiftui/sidebarcommands)
- [TextEditingCommands](/documentation/swiftui/texteditingcommands)
- [TextFormattingCommands](/documentation/swiftui/textformattingcommands)
- [ToolbarCommands](/documentation/swiftui/toolbarcommands)
- [ImportFromDevicesCommands](/documentation/swiftui/importfromdevicescommands)
- [EmptyCommands](/documentation/swiftui/emptycommands)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
