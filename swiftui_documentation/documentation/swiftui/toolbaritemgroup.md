---
title: ToolbarItemGroup
description: A model that represents a group of s which can be placed in the toolbar or navigation bar.
source: https://developer.apple.com/documentation/swiftui/toolbaritemgroup
timestamp: 2025-10-29T00:11:41.277Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ToolbarItemGroup

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A model that represents a group of s which can be placed in the toolbar or navigation bar.

```swift
struct ToolbarItemGroup<Content> where Content : View
```

## Conforms To

- [ToolbarContent](/documentation/swiftui/toolbarcontent)

## Creating a toolbar item group

- [init(placement:content:)](/documentation/swiftui/toolbaritemgroup/init(placement:content:)) Creates a toolbar item group with a specified placement and content.
- [init(placement:content:label:)](/documentation/swiftui/toolbaritemgroup/init(placement:content:label:)) Creates a toolbar item group with the specified placement, content, and a label describing that content.

## Supporting types

- [LabeledToolbarItemGroupContent](/documentation/swiftui/labeledtoolbaritemgroupcontent) A view that represents the view of a toolbar item group with a specified label.

## Populating a toolbar

- [toolbar(content:)](/documentation/swiftui/view/toolbar(content:))
- [ToolbarItem](/documentation/swiftui/toolbaritem)
- [ToolbarItemPlacement](/documentation/swiftui/toolbaritemplacement)
- [ToolbarContent](/documentation/swiftui/toolbarcontent)
- [ToolbarContentBuilder](/documentation/swiftui/toolbarcontentbuilder)
- [ToolbarSpacer](/documentation/swiftui/toolbarspacer)
- [DefaultToolbarItem](/documentation/swiftui/defaulttoolbaritem)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
