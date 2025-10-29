---
title: menuOrder(_:)
description: Sets the preferred order of items for menus presented from this view.
source: https://developer.apple.com/documentation/swiftui/view/menuorder(_:)
timestamp: 2025-10-29T00:11:36.184Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# menuOrder(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets the preferred order of items for menus presented from this view.

```swift
nonisolated func menuOrder(_ order: MenuOrder) -> some View
```

## Parameters

**order**

The menu item ordering strategy to apply.



## Return Value

A view that uses the specified menu ordering strategy.

## Discussion

Use this modifier to override the default menu order. On supported platforms, [priority](/documentation/swiftui/menuorder/priority) order keeps the first items closer to the user’s point of interaction, whereas [fixed](/documentation/swiftui/menuorder/fixed) order always orders items from top to bottom.

On iOS, the [automatic](/documentation/swiftui/menuorder/automatic) order resolves to [fixed](/documentation/swiftui/menuorder/fixed) for menus presented within scrollable content. Pickers that use the [menu](/documentation/swiftui/pickerstyle/menu) style also default to [fixed](/documentation/swiftui/menuorder/fixed) order. In all other cases, menus default to [priority](/documentation/swiftui/menuorder/priority) order.

On macOS, tvOS and watchOS, the [automatic](/documentation/swiftui/menuorder/automatic) order always resolves to [fixed](/documentation/swiftui/menuorder/fixed) order.

The following example creates a menu that presents its content in a fixed order from top to bottom:

```swift
Menu {
    Button("Select", action: selectFolders)
    Button("New Folder", action: createFolder)
    Picker("Appearance", selection: $appearance) {
        Label("Icons", systemImage: "square.grid.2x2").tag(Appearance.icons)
        Label("List", systemImage: "list.bullet").tag(Appearance.list)
    }
} label: {
    Label("Settings", systemImage: "ellipsis.circle")
}
.menuOrder(.fixed)
```

You can use this modifier on controls that present a menu. For example, the code below creates a [Picker](/documentation/swiftui/picker) using the [menu](/documentation/swiftui/pickerstyle/menu) style with a priority-based order:

```swift
Picker("Flavor", selection: $selectedFlavor) {
    Text("Chocolate").tag(Flavor.chocolate)
    Text("Vanilla").tag(Flavor.vanilla)
    Text("Strawberry").tag(Flavor.strawberry)
}
.pickerStyle(.menu)
.menuOrder(.priority)
```

You can also use this modifier on context menus. The example below creates a context menu that presents its content in a fixed order:

```swift
Text("Favorite Card Suit")
    .padding()
    .contextMenu {
        Button("♥️ - Hearts", action: selectHearts)
        Button("♣️ - Clubs", action: selectClubs)
        Button("♠️ - Spades", action: selectSpades)
        Button("♦️ - Diamonds", action: selectDiamonds)
    }
    .menuOrder(.fixed)
```

The modifier has no effect when applied to a subsection or submenu of a menu.

## Setting a preferred order

- [menuOrder](/documentation/swiftui/environmentvalues/menuorder)
- [MenuOrder](/documentation/swiftui/menuorder)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
