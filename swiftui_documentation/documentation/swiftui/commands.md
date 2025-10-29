---
title: Commands
description: Conforming types represent a group of related commands that can be exposed to the user via the main menu on macOS and key commands on iOS.
source: https://developer.apple.com/documentation/swiftui/commands
timestamp: 2025-10-29T00:12:19.727Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# Commands

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Conforming types represent a group of related commands that can be exposed to the user via the main menu on macOS and key commands on iOS.

```swift
@MainActor @preconcurrency protocol Commands
```

## Overview

A type conforming to this protocol inherits `@preconcurrency @MainActor` isolation from the protocol if the conformance is included in the type’s base declaration:

```swift
struct MyCustomType: Transition {
    // `@preconcurrency @MainActor` isolation by default
}
```

Isolation to the main actor is the default, but it’s not required. Declare the conformance in an extension to opt out of main actor isolation:

```swift
extension MyCustomType: Transition {
    // `nonisolated` by default
}
```

## Conforming Types

- [CommandGroup](/documentation/swiftui/commandgroup)
- [CommandMenu](/documentation/swiftui/commandmenu)
- [EmptyCommands](/documentation/swiftui/emptycommands)
- [Group](/documentation/swiftui/group)
- [ImportFromDevicesCommands](/documentation/swiftui/importfromdevicescommands)
- [InspectorCommands](/documentation/swiftui/inspectorcommands)
- [SidebarCommands](/documentation/swiftui/sidebarcommands)
- [TextEditingCommands](/documentation/swiftui/texteditingcommands)
- [TextFormattingCommands](/documentation/swiftui/textformattingcommands)
- [ToolbarCommands](/documentation/swiftui/toolbarcommands)

## Implementing commands

- [body](/documentation/swiftui/commands/body-swift.property) The contents of the command hierarchy.
- [Body](/documentation/swiftui/commands/body-swift.associatedtype) The type of commands that represents the body of this command hierarchy.

## Defining commands

- [commands(content:)](/documentation/swiftui/scene/commands(content:))
- [commandsRemoved()](/documentation/swiftui/scene/commandsremoved())
- [commandsReplaced(content:)](/documentation/swiftui/scene/commandsreplaced(content:))
- [CommandMenu](/documentation/swiftui/commandmenu)
- [CommandGroup](/documentation/swiftui/commandgroup)
- [CommandsBuilder](/documentation/swiftui/commandsbuilder)
- [CommandGroupPlacement](/documentation/swiftui/commandgroupplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
