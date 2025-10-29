---
title: safeAreaRegions
description: The safe area regions that this view controller adds to its view.
source: https://developer.apple.com/documentation/swiftui/nshostingcontroller/safearearegions
timestamp: 2025-10-29T00:14:07.357Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nshostingcontroller](/documentation/swiftui/nshostingcontroller)

**Instance Property**

# safeAreaRegions

**Available on:** macOS 13.3+

> The safe area regions that this view controller adds to its view.

```swift
@MainActor @preconcurrency var safeAreaRegions: SafeAreaRegions { get set }
```

## Discussion

The default value is `SafeAreaRegions.all`.

## Configuring the controller

- [sizeThatFits(in:)](/documentation/swiftui/nshostingcontroller/sizethatfits(in:))
- [preferredContentSize](/documentation/swiftui/nshostingcontroller/preferredcontentsize)
- [sizingOptions](/documentation/swiftui/nshostingcontroller/sizingoptions)
- [sceneBridgingOptions](/documentation/swiftui/nshostingcontroller/scenebridgingoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
