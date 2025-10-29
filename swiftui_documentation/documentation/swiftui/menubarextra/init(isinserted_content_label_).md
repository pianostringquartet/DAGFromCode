---
title: init(isInserted:content:label:)
description: Creates a menu bar extra. The item will be displayed in the system menu bar when the specified binding is set to . If the user removes the item from the menu bar, the binding will be set to .
source: https://developer.apple.com/documentation/swiftui/menubarextra/init(isinserted:content:label:)
timestamp: 2025-10-29T00:10:16.229Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menubarextra](/documentation/swiftui/menubarextra)

**Initializer**

# init(isInserted:content:label:)

**Available on:** macOS 13.0+

> Creates a menu bar extra. The item will be displayed in the system menu bar when the specified binding is set to . If the user removes the item from the menu bar, the binding will be set to .

```swift
init(isInserted: Binding<Bool>, @ViewBuilder content: () -> Content, @ViewBuilder label: () -> Label)
```

## Parameters

**isInserted**

Whether the item is inserted in the menu bar. The item may or may not be visible, depending on the number of items present.



**content**

A `View` to display when the user selects the item.



**label**

A `View` to use as the label in the system menu bar.



## Creating a menu bar extra

- [init(_:content:)](/documentation/swiftui/menubarextra/init(_:content:))
- [init(content:label:)](/documentation/swiftui/menubarextra/init(content:label:))
- [init(_:isInserted:content:)](/documentation/swiftui/menubarextra/init(_:isinserted:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
