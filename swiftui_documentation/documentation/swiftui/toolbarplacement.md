---
title: ToolbarPlacement
description: The placement of a toolbar.
source: https://developer.apple.com/documentation/swiftui/toolbarplacement
timestamp: 2025-10-29T00:14:30.739Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ToolbarPlacement

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The placement of a toolbar.

```swift
struct ToolbarPlacement
```

## Overview

Use this type in conjunction with modifiers like [toolbarBackground(_:for:)](/documentation/swiftui/view/toolbarbackground(_:for:)) and [toolbar(_:for:)](/documentation/swiftui/view/toolbar(_:for:)) to customize the appearance of different bars managed by SwiftUI. Not all bars support all types of customizations.

See [Toolbar Item Placement](/documentation/swiftui/toolbaritemplacement) to learn about the different regions of these toolbars that you can place your own controls into.

## Getting placements

- [automatic](/documentation/swiftui/toolbarplacement/automatic) The primary toolbar.
- [accessoryBar(id:)](/documentation/swiftui/toolbarplacement/accessorybar(id:)) Creates a unique accessory bar placement.
- [bottomBar](/documentation/swiftui/toolbarplacement/bottombar) The bottom toolbar of an app.
- [bottomOrnament](/documentation/swiftui/toolbarplacement/bottomornament) The bottom ornament of an app.
- [navigationBar](/documentation/swiftui/toolbarplacement/navigationbar) The navigation bar of an app.
- [tabBar](/documentation/swiftui/toolbarplacement/tabbar) The tab bar of an app.
- [windowToolbar](/documentation/swiftui/toolbarplacement/windowtoolbar) The placement for the containing window’s toolbar, sometimes referred to as the titlebar.

## Deprecated symbols

- [init(id:)](/documentation/swiftui/toolbarplacement/init(id:)) Creates a custom accessory bar placement.

## Setting toolbar visibility

- [toolbar(_:for:)](/documentation/swiftui/view/toolbar(_:for:))
- [toolbarVisibility(_:for:)](/documentation/swiftui/view/toolbarvisibility(_:for:))
- [toolbarBackgroundVisibility(_:for:)](/documentation/swiftui/view/toolbarbackgroundvisibility(_:for:))
- [ContentToolbarPlacement](/documentation/swiftui/contenttoolbarplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
