---
title: ToolbarItemPlacement
description: A structure that defines the placement of a toolbar item.
source: https://developer.apple.com/documentation/swiftui/toolbaritemplacement
timestamp: 2025-10-29T00:12:07.965Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ToolbarItemPlacement

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A structure that defines the placement of a toolbar item.

```swift
struct ToolbarItemPlacement
```

## Overview

There are two types of placements:

- Semantic placements, such as [principal](/documentation/swiftui/toolbaritemplacement/principal) and [navigation](/documentation/swiftui/toolbaritemplacement/navigation), denote the intent of the item being added. SwiftUI determines the appropriate placement for the item based on this intent and its surrounding context, like the current platform.
- Positional placements, such as [navigation Bar Leading](/documentation/swiftui/toolbaritemplacement/navigationbarleading), denote a precise placement for the item, usually for a particular platform.

In iOS, iPadOS, and macOS, the system uses the space available to the toolbar when determining how many items to render in the toolbar. If not all items fit in the available space, an overflow menu may be created and remaining items placed in that menu.

## Getting semantic placement

- [automatic](/documentation/swiftui/toolbaritemplacement/automatic) The system places the item automatically, depending on many factors including the platform, size class, or presence of other items.
- [principal](/documentation/swiftui/toolbaritemplacement/principal) The system places the item in the principal item section.
- [status](/documentation/swiftui/toolbaritemplacement/status) The item represents a change in status for the current context.

## Getting placement for specific actions

- [primaryAction](/documentation/swiftui/toolbaritemplacement/primaryaction) The item represents a primary action.
- [secondaryAction](/documentation/swiftui/toolbaritemplacement/secondaryaction) The item represents a secondary action.
- [confirmationAction](/documentation/swiftui/toolbaritemplacement/confirmationaction) The item represents a confirmation action for a modal interface.
- [cancellationAction](/documentation/swiftui/toolbaritemplacement/cancellationaction) The item represents a cancellation action for a modal interface.
- [destructiveAction](/documentation/swiftui/toolbaritemplacement/destructiveaction) The item represents a destructive action for a modal interface.
- [navigation](/documentation/swiftui/toolbaritemplacement/navigation) The item represents a navigation action.

## Getting explicit placement

- [topBarLeading](/documentation/swiftui/toolbaritemplacement/topbarleading) Places the item in the leading edge of the top bar.
- [topBarTrailing](/documentation/swiftui/toolbaritemplacement/topbartrailing) Places the item in the trailing edge of the top bar.
- [bottomBar](/documentation/swiftui/toolbaritemplacement/bottombar) Places the item in the bottom toolbar.
- [bottomOrnament](/documentation/swiftui/toolbaritemplacement/bottomornament) Places the item in an ornament under the window.
- [keyboard](/documentation/swiftui/toolbaritemplacement/keyboard) The item is placed in the keyboard section.
- [accessoryBar(id:)](/documentation/swiftui/toolbaritemplacement/accessorybar(id:)) Creates a unique accessory bar placement.

## Deprecated symbols

- [init(id:)](/documentation/swiftui/toolbaritemplacement/init(id:)) Creates a custom accessory bar item placement.
- [navigationBarLeading](/documentation/swiftui/toolbaritemplacement/navigationbarleading) Places the item in the leading edge of the navigation bar.
- [navigationBarTrailing](/documentation/swiftui/toolbaritemplacement/navigationbartrailing) Places the item in the trailing edge of the navigation bar.

## Type Properties

- [largeSubtitle](/documentation/swiftui/toolbaritemplacement/largesubtitle) Places the item in the subtitle area of the navigation bar.
- [largeTitle](/documentation/swiftui/toolbaritemplacement/largetitle) Places the item in the title area of the navigation bar.
- [subtitle](/documentation/swiftui/toolbaritemplacement/subtitle) Places the item in the subtitle area of the navigation bar.
- [title](/documentation/swiftui/toolbaritemplacement/title) Places the item in the title area of the navigation bar.

## Populating a toolbar

- [toolbar(content:)](/documentation/swiftui/view/toolbar(content:))
- [ToolbarItem](/documentation/swiftui/toolbaritem)
- [ToolbarItemGroup](/documentation/swiftui/toolbaritemgroup)
- [ToolbarContent](/documentation/swiftui/toolbarcontent)
- [ToolbarContentBuilder](/documentation/swiftui/toolbarcontentbuilder)
- [ToolbarSpacer](/documentation/swiftui/toolbarspacer)
- [DefaultToolbarItem](/documentation/swiftui/defaulttoolbaritem)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
