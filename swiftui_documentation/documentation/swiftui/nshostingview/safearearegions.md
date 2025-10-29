---
title: safeAreaRegions
description: The safe area regions that this view controller adds to its view.
source: https://developer.apple.com/documentation/swiftui/nshostingview/safearearegions
timestamp: 2025-10-29T00:12:46.246Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nshostingview](/documentation/swiftui/nshostingview)

**Instance Property**

# safeAreaRegions

**Available on:** macOS 13.3+

> The safe area regions that this view controller adds to its view.

```swift
@MainActor @preconcurrency var safeAreaRegions: SafeAreaRegions { get set }
```

## Discussion

The default value is `SafeAreaRegions.all`.

## Configuring the view layout behavior

- [requiresConstraintBasedLayout](/documentation/swiftui/nshostingview/requiresconstraintbasedlayout)
- [userInterfaceLayoutDirection](/documentation/swiftui/nshostingview/userinterfacelayoutdirection)
- [isFlipped](/documentation/swiftui/nshostingview/isflipped)
- [layerContentsRedrawPolicy](/documentation/swiftui/nshostingview/layercontentsredrawpolicy)
- [updateConstraints()](/documentation/swiftui/nshostingview/updateconstraints())
- [layout()](/documentation/swiftui/nshostingview/layout())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
