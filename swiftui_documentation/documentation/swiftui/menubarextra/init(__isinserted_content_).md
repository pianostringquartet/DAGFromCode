---
title: init(_:isInserted:content:)
description: Creates a menu bar extra with a key for a localized string to use as the label. The item will be displayed in the system menu bar when the specified binding is set to . If the user removes the item from the menu bar, the binding will be set to .
source: https://developer.apple.com/documentation/swiftui/menubarextra/init(_:isinserted:content:)
timestamp: 2025-10-29T00:11:58.455Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menubarextra](/documentation/swiftui/menubarextra)

**Initializer**

# init(_:isInserted:content:)

**Available on:** macOS 13.0+

> Creates a menu bar extra with a key for a localized string to use as the label. The item will be displayed in the system menu bar when the specified binding is set to . If the user removes the item from the menu bar, the binding will be set to .

```swift
nonisolated init(_ titleKey: LocalizedStringKey, isInserted: Binding<Bool>, @ViewBuilder content: () -> Content)
```

## Parameters

**titleKey**

The title key to use for the label of the item.



**isInserted**

Whether the item is inserted in the menu bar. The item may or may not be visible, depending on the number of items present.



**content**

A `View` to display when the user selects the item.



## Creating a menu bar extra

- [init(_:content:)](/documentation/swiftui/menubarextra/init(_:content:))
- [init(content:label:)](/documentation/swiftui/menubarextra/init(content:label:))
- [init(isInserted:content:label:)](/documentation/swiftui/menubarextra/init(isinserted:content:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
