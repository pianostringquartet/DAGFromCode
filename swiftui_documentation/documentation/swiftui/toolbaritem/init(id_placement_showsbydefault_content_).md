---
title: init(id:placement:showsByDefault:content:)
description: Creates a toolbar item with the specified placement and content, which allows for user customization.
source: https://developer.apple.com/documentation/swiftui/toolbaritem/init(id:placement:showsbydefault:content:)
timestamp: 2025-10-29T00:14:28.089Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritem](/documentation/swiftui/toolbaritem)

**Initializer**

# init(id:placement:showsByDefault:content:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a toolbar item with the specified placement and content, which allows for user customization.

```swift
nonisolated init(id: String, placement: ToolbarItemPlacement = .automatic, showsByDefault: Bool, @ViewBuilder content: () -> Content)
```

## Parameters

**id**

A unique identifier for this item.



**placement**

Which section of the toolbar the item should be placed in.



**showsByDefault**

Whether the item appears by default in the toolbar, or only shows if the user explicitly adds it via customization.



**content**

The content of the item.



## Creating a toolbar item

- [init(placement:content:)](/documentation/swiftui/toolbaritem/init(placement:content:))
- [init(id:placement:content:)](/documentation/swiftui/toolbaritem/init(id:placement:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
