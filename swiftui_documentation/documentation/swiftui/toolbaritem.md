---
title: ToolbarItem
description: A model that represents an item which can be placed in the toolbar or navigation bar.
source: https://developer.apple.com/documentation/swiftui/toolbaritem
timestamp: 2025-10-29T00:09:53.948Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ToolbarItem

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A model that represents an item which can be placed in the toolbar or navigation bar.

```swift
struct ToolbarItem<ID, Content> where Content : View
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [CustomizableToolbarContent](/documentation/swiftui/customizabletoolbarcontent)
- [Identifiable](/documentation/Swift/Identifiable)
- [ToolbarContent](/documentation/swiftui/toolbarcontent)

## Creating a toolbar item

- [init(placement:content:)](/documentation/swiftui/toolbaritem/init(placement:content:)) Creates a toolbar item with the specified placement and content.
- [init(id:placement:content:)](/documentation/swiftui/toolbaritem/init(id:placement:content:)) Creates a toolbar item with the specified placement and content, which allows for user customization.
- [init(id:placement:showsByDefault:content:)](/documentation/swiftui/toolbaritem/init(id:placement:showsbydefault:content:)) Creates a toolbar item with the specified placement and content, which allows for user customization.

## Populating a toolbar

- [toolbar(content:)](/documentation/swiftui/view/toolbar(content:))
- [ToolbarItemGroup](/documentation/swiftui/toolbaritemgroup)
- [ToolbarItemPlacement](/documentation/swiftui/toolbaritemplacement)
- [ToolbarContent](/documentation/swiftui/toolbarcontent)
- [ToolbarContentBuilder](/documentation/swiftui/toolbarcontentbuilder)
- [ToolbarSpacer](/documentation/swiftui/toolbarspacer)
- [DefaultToolbarItem](/documentation/swiftui/defaulttoolbaritem)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
