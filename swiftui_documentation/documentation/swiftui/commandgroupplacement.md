---
title: CommandGroupPlacement
description: The standard locations that you can place new command groups relative to.
source: https://developer.apple.com/documentation/swiftui/commandgroupplacement
timestamp: 2025-10-29T00:14:26.063Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# CommandGroupPlacement

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> The standard locations that you can place new command groups relative to.

```swift
struct CommandGroupPlacement
```

## Overview

The names of these placements aren’t visible in the user interface, but the discussion for each placement lists the items that it includes.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## App interactions

- [appInfo](/documentation/swiftui/commandgroupplacement/appinfo) Placement for commands that provide information about the app, the terms of the user’s license agreement, and so on.
- [appSettings](/documentation/swiftui/commandgroupplacement/appsettings) Placement for commands that expose app settings and preferences.
- [appTermination](/documentation/swiftui/commandgroupplacement/apptermination) Placement for commands that result in app termination.
- [appVisibility](/documentation/swiftui/commandgroupplacement/appvisibility) Placement for commands that control the visibility of running apps.
- [systemServices](/documentation/swiftui/commandgroupplacement/systemservices) Placement for commands that expose services other apps provide.

## File manipulation

- [importExport](/documentation/swiftui/commandgroupplacement/importexport) Placement for commands that relate to importing and exporting data using formats that the app doesn’t natively support.
- [newItem](/documentation/swiftui/commandgroupplacement/newitem) Placement for commands that create different kinds of documents.
- [printItem](/documentation/swiftui/commandgroupplacement/printitem) Placement for commands related to printing app content.
- [saveItem](/documentation/swiftui/commandgroupplacement/saveitem) Placement for commands that save open documents and close windows.

## Content updates

- [pasteboard](/documentation/swiftui/commandgroupplacement/pasteboard) Placement for commands that interact with the Clipboard and manipulate content that is currently selected in the app’s view hierarchy.
- [textEditing](/documentation/swiftui/commandgroupplacement/textediting) Placement for commands that manipulate and transform text selections.
- [textFormatting](/documentation/swiftui/commandgroupplacement/textformatting) Placement for commands that manipulate and transform the styles applied to text selections.
- [undoRedo](/documentation/swiftui/commandgroupplacement/undoredo) Placement for commands that control the Undo Manager.

## Bars

- [sidebar](/documentation/swiftui/commandgroupplacement/sidebar) Placement for commands that control the app’s sidebar and full-screen modes.
- [toolbar](/documentation/swiftui/commandgroupplacement/toolbar) Placement for commands that manipulate the toolbar.

## Windows

- [singleWindowList](/documentation/swiftui/commandgroupplacement/singlewindowlist) Placement for commands that describe and reveal any windows that the app defines.
- [windowArrangement](/documentation/swiftui/commandgroupplacement/windowarrangement) Placement for commands that arrange all of an app’s windows.
- [windowList](/documentation/swiftui/commandgroupplacement/windowlist) Placement for commands that describe and reveal the app’s open windows.
- [windowSize](/documentation/swiftui/commandgroupplacement/windowsize) Placement for commands that control the size of the window.

## Help

- [help](/documentation/swiftui/commandgroupplacement/help) Placement for commands that present documentation and helpful information to people.

## Defining commands

- [commands(content:)](/documentation/swiftui/scene/commands(content:))
- [commandsRemoved()](/documentation/swiftui/scene/commandsremoved())
- [commandsReplaced(content:)](/documentation/swiftui/scene/commandsreplaced(content:))
- [Commands](/documentation/swiftui/commands)
- [CommandMenu](/documentation/swiftui/commandmenu)
- [CommandGroup](/documentation/swiftui/commandgroup)
- [CommandsBuilder](/documentation/swiftui/commandsbuilder)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
