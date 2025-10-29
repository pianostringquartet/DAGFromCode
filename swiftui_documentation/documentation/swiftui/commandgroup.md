---
title: CommandGroup
description: Groups of controls that you can add to existing command menus.
source: https://developer.apple.com/documentation/swiftui/commandgroup
timestamp: 2025-10-29T00:12:51.600Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# CommandGroup

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Groups of controls that you can add to existing command menus.

```swift
struct CommandGroup<Content> where Content : View
```

## Overview

In macOS, SwiftUI realizes command groups as collections of menu items in a menu bar menu. In iOS, iPadOS, and tvOS, SwiftUI creates key commands for each of a group’s commands that has a keyboard shortcut.

## Conforms To

- [Commands](/documentation/swiftui/commands)

## Creating a command group

- [init(after:addition:)](/documentation/swiftui/commandgroup/init(after:addition:)) A value describing the addition of the given views to the end of the indicated group.
- [init(before:addition:)](/documentation/swiftui/commandgroup/init(before:addition:)) A value describing the addition of the given views to the beginning of the indicated group.
- [init(replacing:addition:)](/documentation/swiftui/commandgroup/init(replacing:addition:)) A value describing the complete replacement of the contents of the indicated group with the given views.

## Defining commands

- [commands(content:)](/documentation/swiftui/scene/commands(content:))
- [commandsRemoved()](/documentation/swiftui/scene/commandsremoved())
- [commandsReplaced(content:)](/documentation/swiftui/scene/commandsreplaced(content:))
- [Commands](/documentation/swiftui/commands)
- [CommandMenu](/documentation/swiftui/commandmenu)
- [CommandsBuilder](/documentation/swiftui/commandsbuilder)
- [CommandGroupPlacement](/documentation/swiftui/commandgroupplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
