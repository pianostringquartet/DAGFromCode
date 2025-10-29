---
title: accessoryBar(id:)
description: Creates a unique accessory bar placement.
source: https://developer.apple.com/documentation/swiftui/toolbarplacement/accessorybar(id:)
timestamp: 2025-10-29T00:11:57.806Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbarplacement](/documentation/swiftui/toolbarplacement)

**Type Method**

# accessoryBar(id:)

**Available on:** macOS 13.0+

> Creates a unique accessory bar placement.

```swift
@backDeployed(before: macOS 14.0)
static func accessoryBar<ID>(id: ID) -> ToolbarPlacement where ID : Hashable
```

## Parameters

**id**

A unique identifier for this placement.



## Discussion

On macOS, accessory bars are in a section below the title bar and toolbar area of the window. Each separate identifier will correspond to a separate accessory bar that is added to this area.

Use a custom placement to control the appearance of the containing bar for items using a custom [Toolbar Item Placement](/documentation/swiftui/toolbaritemplacement) with the same identifier.

```swift
private let favoritesBarID = "com.example.favoritesBar"
extension ToolbarItemPlacement {
    static let favoritesBar = accessoryBar(id: favoritesBarID)
}
extension ToolbarPlacement {
    static let favoritesBar = accessoryBar(id: favoritesBarID)
}
...
BrowserView()
    .toolbar {
        ToolbarItem(placement: .favoritesBar) {
            FavoritesBar()
        }
    }
    .toolbar(.hidden, for: .favoritesBar)
```

## Getting placements

- [automatic](/documentation/swiftui/toolbarplacement/automatic)
- [bottomBar](/documentation/swiftui/toolbarplacement/bottombar)
- [bottomOrnament](/documentation/swiftui/toolbarplacement/bottomornament)
- [navigationBar](/documentation/swiftui/toolbarplacement/navigationbar)
- [tabBar](/documentation/swiftui/toolbarplacement/tabbar)
- [windowToolbar](/documentation/swiftui/toolbarplacement/windowtoolbar)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
