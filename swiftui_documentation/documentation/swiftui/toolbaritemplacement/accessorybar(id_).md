---
title: accessoryBar(id:)
description: Creates a unique accessory bar placement.
source: https://developer.apple.com/documentation/swiftui/toolbaritemplacement/accessorybar(id:)
timestamp: 2025-10-29T00:11:28.536Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritemplacement](/documentation/swiftui/toolbaritemplacement)

**Type Method**

# accessoryBar(id:)

**Available on:** macOS 13.0+

> Creates a unique accessory bar placement.

```swift
@backDeployed(before: macOS 14.0)
static func accessoryBar<ID>(id: ID) -> ToolbarItemPlacement where ID : Hashable
```

## Parameters

**id**

A unique identifier for this placement.



## Discussion

On macOS, items with an accessory bar placement are placed in a section below the title bar and toolbar area of the window. Each separate identifier will correspond to a separate accessory bar that is added to this area.

```swift
extension ToolbarItemPlacement {
    static let favoritesBar = accessoryBar(id: "com.example.favorites")
}
...
BrowserView()
    .toolbar {
        ToolbarItem(placement: .favoritesBar) {
            FavoritesBar()
        }
    }
```

## Getting explicit placement

- [topBarLeading](/documentation/swiftui/toolbaritemplacement/topbarleading)
- [topBarTrailing](/documentation/swiftui/toolbaritemplacement/topbartrailing)
- [bottomBar](/documentation/swiftui/toolbaritemplacement/bottombar)
- [bottomOrnament](/documentation/swiftui/toolbaritemplacement/bottomornament)
- [keyboard](/documentation/swiftui/toolbaritemplacement/keyboard)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
