---
title: contextMenu(menuItems:)
description: Adds a context menu to a table row.
source: https://developer.apple.com/documentation/swiftui/tablerowcontent/contextmenu(menuitems:)
timestamp: 2025-10-29T00:12:55.859Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablerowcontent](/documentation/swiftui/tablerowcontent)

**Instance Method**

# contextMenu(menuItems:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Adds a context menu to a table row.

```swift
@MainActor @preconcurrency func contextMenu<M>(@ViewBuilder menuItems: () -> M) -> ModifiedContent<Self, _ContextMenuTableRowModifier<M>> where M : View
```

## Parameters

**menuItems**

A closure that produces the menu’s contents. You can deactivate the context menu by returning nothing from the closure.



## Return Value

A row that can display a context menu.

## Discussion

Use this modifier to add a context menu to a table row. Compose the menu by returning controls like [Button](/documentation/swiftui/button), [Toggle](/documentation/swiftui/toggle), and [Picker](/documentation/swiftui/picker) from the `menuItems` closure. You can also use [Menu](/documentation/swiftui/menu) to define submenus, or [Section](/documentation/swiftui/section) to group items.

The following example adds a context menu to each row in a table that people can use to send an email to the person represented by that row:

```swift
Table(of: Person.self) {
    TableColumn("Given Name", value: \.givenName)
    TableColumn("Family Name", value: \.familyName)
} rows: {
    ForEach(people) { person in
        TableRow(person)
            .contextMenu {
                Button("Send Email...") { }
            }
    }
}
```

If you want to display a preview beside the context menu, use [contextMenu(menuItems:preview:)](/documentation/swiftui/tablerowcontent/contextmenu(menuitems:preview:)). If you want to display a context menu that’s based on the current selection, use [contextMenu(forSelectionType:menu:primaryAction:)](/documentation/swiftui/view/contextmenu(forselectiontype:menu:primaryaction:)). To add context menus to other kinds of views, use [contextMenu(menuItems:)](/documentation/swiftui/view/contextmenu(menuitems:)).

## Adding a context menu to a row

- [contextMenu(menuItems:preview:)](/documentation/swiftui/tablerowcontent/contextmenu(menuitems:preview:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
