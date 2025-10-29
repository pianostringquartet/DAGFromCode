---
title: contextMenu(menuItems:)
description: Adds a context menu to a tab.
source: https://developer.apple.com/documentation/swiftui/tabcontent/contextmenu(menuitems:)
timestamp: 2025-10-29T00:12:36.676Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabcontent](/documentation/swiftui/tabcontent)

**Instance Method**

# contextMenu(menuItems:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Adds a context menu to a tab.

```swift
nonisolated func contextMenu<M>(@ViewBuilder menuItems: () -> M) -> some TabContent<Self.TabValue> where M : View
```

## Parameters

**menuItems**

A closure that produces the menu’s contents. You can deactivate the context menu by returning nothing from the closure.



## Return Value

A row that can display a context menu.

## Discussion

Use this modifier to add a context menu to a tab’s sidebar representation. Compose the menu by returning controls like [Button](/documentation/swiftui/button), [Toggle](/documentation/swiftui/toggle) and [Picker](/documentation/swiftui/picker) from the `menuItems` closure. You can also use [Menu](/documentation/swiftui/menu) to define submenus, or [Section](/documentation/swiftui/section) to group items.

The following example adds the ability to pin the tab or share the tab’s books with a friend.

```swift
Tab("Currently Reading", systemImage: "book") {
    CurrentBooksList()
}
.contextMenu {
    Button {
        // Pin this tab.
    } label: {
        Label("Pin", systemImage: "pin")
    }
    Button {
        // Open a share sheet to share
    } label: {
        Label("Share", systemImage: "square.and.arrow.up")
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
