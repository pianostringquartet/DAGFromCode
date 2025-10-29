---
title: windowToolbar
description: The placement for the containing window’s toolbar, sometimes referred to as the titlebar.
source: https://developer.apple.com/documentation/swiftui/toolbarplacement/windowtoolbar
timestamp: 2025-10-29T00:10:47.907Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbarplacement](/documentation/swiftui/toolbarplacement)

**Type Property**

# windowToolbar

**Available on:** macOS 13.0+

> The placement for the containing window’s toolbar, sometimes referred to as the titlebar.

```swift
static var windowToolbar: ToolbarPlacement { get }
```

## Discussion

When hidden using [toolbar(_:for:)](/documentation/swiftui/view/toolbar(_:for:)), this hides the entire window toolbar, including the title and “traffic light” window controls. To remove the custom toolbar item content only, use [automatic](/documentation/swiftui/toolbarplacement/automatic).

Use [toolbarBackground(_:for:)](/documentation/swiftui/view/toolbarbackground(_:for:)) to hide the background of the window toolbar.

## Getting placements

- [automatic](/documentation/swiftui/toolbarplacement/automatic)
- [accessoryBar(id:)](/documentation/swiftui/toolbarplacement/accessorybar(id:))
- [bottomBar](/documentation/swiftui/toolbarplacement/bottombar)
- [bottomOrnament](/documentation/swiftui/toolbarplacement/bottomornament)
- [navigationBar](/documentation/swiftui/toolbarplacement/navigationbar)
- [tabBar](/documentation/swiftui/toolbarplacement/tabbar)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
