---
title: ToolbarTitleMenu
description: The title menu of a toolbar.
source: https://developer.apple.com/documentation/swiftui/toolbartitlemenu
timestamp: 2025-10-29T00:14:53.062Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ToolbarTitleMenu

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The title menu of a toolbar.

```swift
struct ToolbarTitleMenu<Content> where Content : View
```

## Overview

A title menu represents common functionality that can be done on the content represented by your app’s toolbar or navigation title. This menu may be populated from your app’s commands like [save Item](/documentation/swiftui/commandgroupplacement/saveitem) or [print Item](/documentation/swiftui/commandgroupplacement/printitem).

```swift
ContentView()
    .toolbar {
        ToolbarTitleMenu()
    }
```

You can provide your own set of actions to override this behavior.

```swift
ContentView()
    .toolbar {
        ToolbarTitleMenu {
            DuplicateButton()
            PrintButton()
        }
    }
```

In iOS and iPadOS, this will construct a menu that can be presented by tapping the navigation title in the app’s navigation bar.

## Conforms To

- [CustomizableToolbarContent](/documentation/swiftui/customizabletoolbarcontent)
- [ToolbarContent](/documentation/swiftui/toolbarcontent)

## Creating a toolbar title menu

- [init()](/documentation/swiftui/toolbartitlemenu/init()) Creates a toolbar title menu where actions are inferred from your apps commands.
- [init(content:)](/documentation/swiftui/toolbartitlemenu/init(content:)) Creates a toolbar title menu.

## Setting the toolbar title menu

- [toolbarTitleMenu(content:)](/documentation/swiftui/view/toolbartitlemenu(content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
