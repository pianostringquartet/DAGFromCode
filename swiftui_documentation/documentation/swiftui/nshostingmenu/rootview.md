---
title: rootView
description: The root view of the SwiftUI view hierarchy managed by this menu.
source: https://developer.apple.com/documentation/swiftui/nshostingmenu/rootview
timestamp: 2025-10-29T00:10:43.654Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nshostingmenu](/documentation/swiftui/nshostingmenu)

**Instance Property**

# rootView

**Available on:** macOS 14.4+

> The root view of the SwiftUI view hierarchy managed by this menu.

```swift
var rootView: Content { get set }
```

## Discussion

Updating this property will immediately update the `items` array, even if the menu is currently visible to the user.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
