---
title: init(_:content:)
description: Creates a menu bar extra with a key for a localized string to use as the label. The extra defines the primary scene of an .
source: https://developer.apple.com/documentation/swiftui/menubarextra/init(_:content:)
timestamp: 2025-10-29T00:11:16.601Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menubarextra](/documentation/swiftui/menubarextra)

**Initializer**

# init(_:content:)

**Available on:** macOS 13.0+

> Creates a menu bar extra with a key for a localized string to use as the label. The extra defines the primary scene of an .

```swift
nonisolated init(_ titleKey: LocalizedStringKey, @ViewBuilder content: () -> Content)
```

## Parameters

**titleKey**

The title key to use for the label of the item.



**content**

A `View` to display when the user selects the item.



## Discussion

When this item is removed from the system menu bar by the user, the application will be automatically quit. As such, it should not be used in conjunction with other scene types in your `App`.

## Creating a menu bar extra

- [init(content:label:)](/documentation/swiftui/menubarextra/init(content:label:))
- [init(_:isInserted:content:)](/documentation/swiftui/menubarextra/init(_:isinserted:content:))
- [init(isInserted:content:label:)](/documentation/swiftui/menubarextra/init(isinserted:content:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
