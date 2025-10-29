---
title: Menus and commands
description: Provide space-efficient, context-dependent access to commands and controls.
source: https://developer.apple.com/documentation/swiftui/menus-and-commands
timestamp: 2025-10-29T00:14:36.601Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Menus and commands

> Provide space-efficient, context-dependent access to commands and controls.

## Overview

Use a menu to provide people with easy access to common commands. You can add items to a macOS or iPadOS app’s menu bar using the [commands(content:)](/documentation/swiftui/scene/commands(content:)) scene modifier, or create context menus that people reveal near their current task using the [contextMenu(menuItems:)](/documentation/swiftui/view/contextmenu(menuitems:)) view modifier.



Create submenus by nesting [Menu](/documentation/swiftui/menu) instances inside others. Use a [Divider](/documentation/swiftui/divider) view to create a separator between menu elements.

For design guidance, see [menus](/design/Human-Interface-Guidelines/menus) in the Human Interface Guidelines.

## Building a menu bar

- [Building and customizing the menu bar with SwiftUI](/documentation/swiftui/building-and-customizing-the-menu-bar-with-swiftui) Provide a seamless, cross-platform user experience by building a native menu bar for iPadOS and macOS.

## Creating a menu

- [Populating SwiftUI menus with adaptive controls](/documentation/swiftui/populating-swiftui-menus-with-adaptive-controls) Improve your app by populating menus with controls and organizing your content intuitively.
- [Menu](/documentation/swiftui/menu) A control for presenting a menu of actions.
- [menuStyle(_:)](/documentation/swiftui/view/menustyle(_:)) Sets the style for menus within this view.

## Creating context menus

- [contextMenu(menuItems:)](/documentation/swiftui/view/contextmenu(menuitems:)) Adds a context menu to a view.
- [contextMenu(menuItems:preview:)](/documentation/swiftui/view/contextmenu(menuitems:preview:)) Adds a context menu with a custom preview to a view.
- [contextMenu(forSelectionType:menu:primaryAction:)](/documentation/swiftui/view/contextmenu(forselectiontype:menu:primaryaction:)) Adds an item-based context menu to a view.

## Defining commands

- [commands(content:)](/documentation/swiftui/scene/commands(content:)) Adds commands to the scene.
- [commandsRemoved()](/documentation/swiftui/scene/commandsremoved()) Removes all commands defined by the modified scene.
- [commandsReplaced(content:)](/documentation/swiftui/scene/commandsreplaced(content:)) Replaces all commands defined by the modified scene with the commands from the builder.
- [Commands](/documentation/swiftui/commands) Conforming types represent a group of related commands that can be exposed to the user via the main menu on macOS and key commands on iOS.
- [CommandMenu](/documentation/swiftui/commandmenu) Command menus are stand-alone, top-level containers for controls that perform related, app-specific commands.
- [CommandGroup](/documentation/swiftui/commandgroup) Groups of controls that you can add to existing command menus.
- [CommandsBuilder](/documentation/swiftui/commandsbuilder) Constructs command sets from multi-expression closures. Like , it supports up to ten expressions in the closure body.
- [CommandGroupPlacement](/documentation/swiftui/commandgroupplacement) The standard locations that you can place new command groups relative to.

## Getting built-in command groups

- [SidebarCommands](/documentation/swiftui/sidebarcommands) A built-in set of commands for manipulating window sidebars.
- [TextEditingCommands](/documentation/swiftui/texteditingcommands) A built-in group of commands for searching, editing, and transforming selections of text.
- [TextFormattingCommands](/documentation/swiftui/textformattingcommands) A built-in set of commands for transforming the styles applied to selections of text.
- [ToolbarCommands](/documentation/swiftui/toolbarcommands) A built-in set of commands for manipulating window toolbars.
- [ImportFromDevicesCommands](/documentation/swiftui/importfromdevicescommands) A built-in set of commands that enables importing content from nearby devices.
- [InspectorCommands](/documentation/swiftui/inspectorcommands) A built-in set of commands for manipulating inspectors.
- [EmptyCommands](/documentation/swiftui/emptycommands) An empty group of commands.

## Showing a menu indicator

- [menuIndicator(_:)](/documentation/swiftui/view/menuindicator(_:)) Sets the menu indicator visibility for controls within this view.
- [menuIndicatorVisibility](/documentation/swiftui/environmentvalues/menuindicatorvisibility) The menu indicator visibility to apply to controls within a view.

## Configuring menu dismissal

- [menuActionDismissBehavior(_:)](/documentation/swiftui/view/menuactiondismissbehavior(_:)) Tells a menu whether to dismiss after performing an action.
- [MenuActionDismissBehavior](/documentation/swiftui/menuactiondismissbehavior) The set of menu dismissal behavior options.

## Setting a preferred order

- [menuOrder(_:)](/documentation/swiftui/view/menuorder(_:)) Sets the preferred order of items for menus presented from this view.
- [menuOrder](/documentation/swiftui/environmentvalues/menuorder) The preferred order of items for menus presented from this view.
- [MenuOrder](/documentation/swiftui/menuorder) The order in which a menu presents its content.

## Deprecated types

- [MenuButton](/documentation/swiftui/menubutton) A button that displays a menu containing a list of choices when pressed.
- [PullDownButton](/documentation/swiftui/pulldownbutton)
- [ContextMenu](/documentation/swiftui/contextmenu) A container for views that you present as menu items in a context menu.

## Views

- [View fundamentals](/documentation/swiftui/view-fundamentals)
- [View configuration](/documentation/swiftui/view-configuration)
- [View styles](/documentation/swiftui/view-styles)
- [Animations](/documentation/swiftui/animations)
- [Text input and output](/documentation/swiftui/text-input-and-output)
- [Images](/documentation/swiftui/images)
- [Controls and indicators](/documentation/swiftui/controls-and-indicators)
- [Shapes](/documentation/swiftui/shapes)
- [Drawing and graphics](/documentation/swiftui/drawing-and-graphics)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
