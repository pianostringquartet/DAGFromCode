---
title: init(_:systemImage:content:)
description: Creates a menu bar extra with a system image to use as the items label. The provided title will be used by the accessibility system.
source: https://developer.apple.com/documentation/swiftui/menubarextra/init(_:systemimage:content:)
timestamp: 2025-10-29T00:11:26.063Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menubarextra](/documentation/swiftui/menubarextra)

**Initializer**

# init(_:systemImage:content:)

**Available on:** macOS 13.0+

> Creates a menu bar extra with a system image to use as the items label. The provided title will be used by the accessibility system.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, systemImage: String, @ViewBuilder content: () -> Content)
```

## Parameters

**titleKey**

The localized string key to use for the accessibility label of the item.



**systemImage**

The name of a system image to use as the label.



**content**

A `View` to display when the user selects the item.



## Discussion

The item defines the primary scene of an `App`.

When this item is removed from the system menu bar by the user, the application will be automatically quit. As such, it should not be used in conjunction with other scene types in your `App`.

## Creating a menu bar extra with an image

- [init(_:image:content:)](/documentation/swiftui/menubarextra/init(_:image:content:))
- [init(_:image:isInserted:content:)](/documentation/swiftui/menubarextra/init(_:image:isinserted:content:))
- [init(_:systemImage:isInserted:content:)](/documentation/swiftui/menubarextra/init(_:systemimage:isinserted:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
