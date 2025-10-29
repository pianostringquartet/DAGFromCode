---
title: init(content:label:)
description: Creates a menu bar extra that will be displayed in the system menu bar, and defines the primary scene of an .
source: https://developer.apple.com/documentation/swiftui/menubarextra/init(content:label:)
timestamp: 2025-10-29T00:14:59.294Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menubarextra](/documentation/swiftui/menubarextra)

**Initializer**

# init(content:label:)

**Available on:** macOS 13.0+

> Creates a menu bar extra that will be displayed in the system menu bar, and defines the primary scene of an .

```swift
init(@ViewBuilder content: () -> Content, @ViewBuilder label: () -> Label)
```

## Parameters

**content**

A `View` to display when the user selects the item.



**label**

A `View` to use as the label in the system menu bar.



## Discussion

When this item is removed from the system menu bar by the user, the application will be automatically quit. As such, it should not be used in conjunction with other scene types in your `App`.

## Creating a menu bar extra

- [init(_:content:)](/documentation/swiftui/menubarextra/init(_:content:))
- [init(_:isInserted:content:)](/documentation/swiftui/menubarextra/init(_:isinserted:content:))
- [init(isInserted:content:label:)](/documentation/swiftui/menubarextra/init(isinserted:content:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
