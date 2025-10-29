---
title: init(_:image:isInserted:content:)
description: Creates a menu bar extra with an image to use as the items label. The provided title will be used by the accessibility system.
source: https://developer.apple.com/documentation/swiftui/menubarextra/init(_:image:isinserted:content:)
timestamp: 2025-10-29T00:14:41.267Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menubarextra](/documentation/swiftui/menubarextra)

**Initializer**

# init(_:image:isInserted:content:)

**Available on:** macOS 14.0+

> Creates a menu bar extra with an image to use as the items label. The provided title will be used by the accessibility system.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, image: ImageResource, isInserted: Binding<Bool>, @ViewBuilder content: () -> Content)
```

## Parameters

**titleKey**

The localized string key to use for the accessibility label of the item.



**image**

The image resource to use as the label.



**isInserted**

Whether the item is inserted in the menu bar. The item may or may not be visible, depending on the number of items present.



**content**

A `View` to display when the user selects the item.



## Discussion

The item will be displayed in the system menu bar when the specified binding is set to `true`. If the user removes the item from the menu bar, the binding will be set to `false`.

## Creating a menu bar extra with an image

- [init(_:image:content:)](/documentation/swiftui/menubarextra/init(_:image:content:))
- [init(_:systemImage:content:)](/documentation/swiftui/menubarextra/init(_:systemimage:content:))
- [init(_:systemImage:isInserted:content:)](/documentation/swiftui/menubarextra/init(_:systemimage:isinserted:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
