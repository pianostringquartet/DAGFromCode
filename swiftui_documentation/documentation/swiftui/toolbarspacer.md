---
title: ToolbarSpacer
description: A standard space item in toolbars.
source: https://developer.apple.com/documentation/swiftui/toolbarspacer
timestamp: 2025-10-29T00:13:11.746Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ToolbarSpacer

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+

> A standard space item in toolbars.

```swift
struct ToolbarSpacer
```

## Overview

A space item creates visual breaks in the toolbar between items. Spacers can have a standard fixed size or be flexible and push items apart.

Spacers can also be used in customizable toolbars:

```swift
ContentView()
    .toolbar(id: "main-toolbar") {
        ToolbarItem(id: "tag") {
           TagButton()
        }
        ToolbarItem(id: "share") {
           ShareButton()
        }
        ToolbarSpacer(.fixed)
        ToolbarItem(id: "more") {
           MoreButton()
        }
    }
```

Space items are customizable and can be added, removed, and rearranged by users. If a customizable toolbar supports a spacer of a given type, users can also add in multiple copies of that spacer from the customization panel.

## Conforms To

- [CustomizableToolbarContent](/documentation/swiftui/customizabletoolbarcontent)
- [ToolbarContent](/documentation/swiftui/toolbarcontent)

## Initializers

- [init(_:placement:)](/documentation/swiftui/toolbarspacer/init(_:placement:)) Creates a toolbar spacer item with the specified sizing behavior and placement.

## Populating a toolbar

- [toolbar(content:)](/documentation/swiftui/view/toolbar(content:))
- [ToolbarItem](/documentation/swiftui/toolbaritem)
- [ToolbarItemGroup](/documentation/swiftui/toolbaritemgroup)
- [ToolbarItemPlacement](/documentation/swiftui/toolbaritemplacement)
- [ToolbarContent](/documentation/swiftui/toolbarcontent)
- [ToolbarContentBuilder](/documentation/swiftui/toolbarcontentbuilder)
- [DefaultToolbarItem](/documentation/swiftui/defaulttoolbaritem)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
