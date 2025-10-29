---
title: contextMenu(_:)
description: Adds a context menu to the view.
source: https://developer.apple.com/documentation/swiftui/view/contextmenu(_:)
timestamp: 2025-10-29T00:13:35.810Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# contextMenu(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 6.0+

> Adds a context menu to the view.

```swift
nonisolated func contextMenu<MenuItems>(_ contextMenu: ContextMenu<MenuItems>?) -> some View where MenuItems : View
```

## Parameters

**contextMenu**

A context menu container for views that you present as menu items in a context menu.



## Return Value

A view that can show a context menu.

## Discussion

Use this method to attach a specified context menu to a view. You can make the context menu unavailable by conditionally passing `nil` as the value for the `contextMenu`.

The example below creates a [Context Menu](/documentation/swiftui/contextmenu) that contains two items and passes them into the modifier. The Boolean value `shouldShowMenu`, which defaults to `true`, controls the context menu availability:

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



## Auxiliary view modifiers

- [navigationBarTitle(_:)](/documentation/swiftui/view/navigationbartitle(_:))
- [navigationBarTitle(_:displayMode:)](/documentation/swiftui/view/navigationbartitle(_:displaymode:))
- [navigationBarItems(leading:)](/documentation/swiftui/view/navigationbaritems(leading:))
- [navigationBarItems(leading:trailing:)](/documentation/swiftui/view/navigationbaritems(leading:trailing:))
- [navigationBarItems(trailing:)](/documentation/swiftui/view/navigationbaritems(trailing:))
- [navigationBarHidden(_:)](/documentation/swiftui/view/navigationbarhidden(_:))
- [statusBar(hidden:)](/documentation/swiftui/view/statusbar(hidden:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
