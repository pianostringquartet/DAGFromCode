---
title: CommandMenu
description: Command menus are stand-alone, top-level containers for controls that perform related, app-specific commands.
source: https://developer.apple.com/documentation/swiftui/commandmenu
timestamp: 2025-10-29T00:11:32.730Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# CommandMenu

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Command menus are stand-alone, top-level containers for controls that perform related, app-specific commands.

```swift
struct CommandMenu<Content> where Content : View
```

## Overview

Command menus are realized as menu bar menus on macOS, inserted between the built-in View and Window menus in order of declaration. On iOS, iPadOS, and tvOS, SwiftUI creates key commands for each of a menu’s commands that has a keyboard shortcut.

## Conforms To

- [Commands](/documentation/swiftui/commands)

## Creating a command menu

- [init(_:content:)](/documentation/swiftui/commandmenu/init(_:content:)) Creates a new menu with a localized name for a collection of app- specific commands, inserted in the standard location for app menus (after the View menu, in order with other menus declared without an explicit location).

## Defining commands

- [commands(content:)](/documentation/swiftui/scene/commands(content:))
- [commandsRemoved()](/documentation/swiftui/scene/commandsremoved())
- [commandsReplaced(content:)](/documentation/swiftui/scene/commandsreplaced(content:))
- [Commands](/documentation/swiftui/commands)
- [CommandGroup](/documentation/swiftui/commandgroup)
- [CommandsBuilder](/documentation/swiftui/commandsbuilder)
- [CommandGroupPlacement](/documentation/swiftui/commandgroupplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
