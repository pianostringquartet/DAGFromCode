---
title: ContextMenu
description: A container for views that you present as menu items in a context menu.
source: https://developer.apple.com/documentation/swiftui/contextmenu
timestamp: 2025-10-29T00:09:20.224Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ContextMenu

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 6.0+

> A container for views that you present as menu items in a context menu.

```swift
struct ContextMenu<MenuItems> where MenuItems : View
```

## Overview

A context menu view allows you to present a situationally specific menu that enables taking actions relevant to the current task.

You can create a context menu by first defining a `ContextMenu` container with the controls that represent the actions people can take, and then using the [contextMenu(_:)](/documentation/swiftui/view/contextmenu(_:)) view modifier to apply the menu to a view.

The example below creates and applies a two item context menu container to a [Text](/documentation/swiftui/text) view. The Boolean value `shouldShowMenu`, which defaults to true, controls the availability of context menu:

```swift
private let menuItems = ContextMenu {
    Button {
        // Add this item to a list of favorites.
    } label: {
        Label("Add to Favorites", systemImage: "heart")
    }
    Button {
        // Open Maps and center it on this item.
    } label: {
        Label("Show in Maps", systemImage: "mappin")
    }
}

private struct ContextMenuMenuItems: View {
    @State private var shouldShowMenu = true

    var body: some View {
        Text("Turtle Rock")
            .contextMenu(shouldShowMenu ? menuItems : nil)
    }
}
```



## Creating a context menu

- [init(menuItems:)](/documentation/swiftui/contextmenu/init(menuitems:)) Creates a context menu.

## Deprecated types

- [MenuButton](/documentation/swiftui/menubutton)
- [PullDownButton](/documentation/swiftui/pulldownbutton)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
