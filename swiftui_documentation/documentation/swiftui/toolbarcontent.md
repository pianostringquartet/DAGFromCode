---
title: ToolbarContent
description: Conforming types represent items that can be placed in various locations in a toolbar.
source: https://developer.apple.com/documentation/swiftui/toolbarcontent
timestamp: 2025-10-29T00:13:58.931Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ToolbarContent

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Conforming types represent items that can be placed in various locations in a toolbar.

```swift
@MainActor @preconcurrency protocol ToolbarContent
```

## Overview

A type conforming to this protocol inherits `@preconcurrency @MainActor` isolation from the protocol if the conformance is included in the type’s base declaration:

```swift
struct MyCustomType: Transition {
    // `@preconcurrency @MainActor` isolation by default
}
```

Isolation to the main actor is the default, but it’s not required. Declare the conformance in an extension to opt out of main actor isolation:

```swift
extension MyCustomType: Transition {
    // `nonisolated` by default
}
```

## Inherited By

- [CustomizableToolbarContent](/documentation/swiftui/customizabletoolbarcontent)

## Conforming Types

- [DefaultToolbarItem](/documentation/swiftui/defaulttoolbaritem)
- [Group](/documentation/swiftui/group)
- [ToolbarItem](/documentation/swiftui/toolbaritem)
- [ToolbarItemGroup](/documentation/swiftui/toolbaritemgroup)
- [ToolbarSpacer](/documentation/swiftui/toolbarspacer)
- [ToolbarTitleMenu](/documentation/swiftui/toolbartitlemenu)

## Implementing toolbar content

- [body](/documentation/swiftui/toolbarcontent/body-swift.property) The composition of content that comprise the toolbar content.
- [Body](/documentation/swiftui/toolbarcontent/body-swift.associatedtype) The type of content representing the body of this toolbar content.

## Instance Methods

- [hidden(_:)](/documentation/swiftui/toolbarcontent/hidden(_:)) Hides a toolbar item within its toolbar.
- [matchedTransitionSource(id:in:)](/documentation/swiftui/toolbarcontent/matchedtransitionsource(id:in:)) Identifies this toolbar content as the source of a navigation transition, such as a zoom transition.
- [sharedBackgroundVisibility(_:)](/documentation/swiftui/toolbarcontent/sharedbackgroundvisibility(_:)) Controls the visibility of the glass background effect on items in the toolbar. In certain contexts, such as the navigation bar on iOS and the window toolbar on macOS, toolbar items will be given a glass background effect that is shared with other items in the same logical grouping.

## Populating a toolbar

- [toolbar(content:)](/documentation/swiftui/view/toolbar(content:))
- [ToolbarItem](/documentation/swiftui/toolbaritem)
- [ToolbarItemGroup](/documentation/swiftui/toolbaritemgroup)
- [ToolbarItemPlacement](/documentation/swiftui/toolbaritemplacement)
- [ToolbarContentBuilder](/documentation/swiftui/toolbarcontentbuilder)
- [ToolbarSpacer](/documentation/swiftui/toolbarspacer)
- [DefaultToolbarItem](/documentation/swiftui/defaulttoolbaritem)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
