---
title: contextMenu(menuItems:)
description: Adds a context menu to a view.
source: https://developer.apple.com/documentation/swiftui/view/contextmenu(menuitems:)
timestamp: 2025-10-29T00:11:05.903Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# contextMenu(menuItems:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 14.0+, visionOS 1.0+, watchOS 6.0+

> Adds a context menu to a view.

```swift
nonisolated func contextMenu<MenuItems>(@ViewBuilder menuItems: () -> MenuItems) -> some View where MenuItems : View
```

## Parameters

**menuItems**

A closure that produces the menu’s contents. You can deactivate the context menu by returning nothing from the closure.



## Return Value

A view that can display a context menu.

## Discussion

Use this modifier to add a context menu to a view in your app’s user interface. Compose the menu by returning controls like [Button](/documentation/swiftui/button), [Toggle](/documentation/swiftui/toggle), and [Picker](/documentation/swiftui/picker) from the `menuItems` closure. You can also use [Menu](/documentation/swiftui/menu) to define submenus or [Section](/documentation/swiftui/section) to group items.

The following example creates a [Text](/documentation/swiftui/text) view that has a context menu with two buttons:

```swift
Text("Turtle Rock")
    .padding()
    .contextMenu {
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
```

When someone activates the context menu with an action like touch and hold in iOS or iPadOS, the system displays the menu next to the content:



The system dismisses the menu if someone makes a selection, or taps or clicks outside the menu.

To customize the default preview, apply a [contentShape(_:_:eoFill:)](/documentation/swiftui/view/contentshape(_:_:eofill:)) with a [context Menu Preview](/documentation/swiftui/contentshapekinds/contextmenupreview) kind. For example, you can change the preview’s corner radius or use a nested view as the preview.

> [!NOTE]
> This view modifier produces a context menu on macOS, but that platform doesn’t display a preview.

If you want to show a different preview, you can use [contextMenu(menuItems:preview:)](/documentation/swiftui/view/contextmenu(menuitems:preview:)). To add a context menu to a container that supports selection, like a [List](/documentation/swiftui/list) or a [Table](/documentation/swiftui/table), and to distinguish between menu activation on a selection and activation in an empty area of the container, use [contextMenu(forSelectionType:menu:primaryAction:)](/documentation/swiftui/view/contextmenu(forselectiontype:menu:primaryaction:)).

## Creating context menus

- [contextMenu(menuItems:preview:)](/documentation/swiftui/view/contextmenu(menuitems:preview:))
- [contextMenu(forSelectionType:menu:primaryAction:)](/documentation/swiftui/view/contextmenu(forselectiontype:menu:primaryaction:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
