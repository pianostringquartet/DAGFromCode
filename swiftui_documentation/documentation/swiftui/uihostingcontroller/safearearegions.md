---
title: safeAreaRegions
description: The safe area regions that this view controller adds to its view.
source: https://developer.apple.com/documentation/swiftui/uihostingcontroller/safearearegions
timestamp: 2025-10-29T00:10:11.576Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingcontroller](/documentation/swiftui/uihostingcontroller)

**Instance Property**

# safeAreaRegions

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, tvOS 16.4+, visionOS 1.0+

> The safe area regions that this view controller adds to its view.

```swift
@MainActor @preconcurrency var safeAreaRegions: SafeAreaRegions { get set }
```

## Discussion

An example of when this is appropriate to use is when hosting content that you know should never be affected by the safe area, such as a custom scrollable container. Disabling a safe area region omits it from the SwiftUI layout system altogether.

The default value is `SafeAreaRegions.all`.

## Managing the size

- [sizingOptions](/documentation/swiftui/uihostingcontroller/sizingoptions)
- [preferredContentSizeDidChange(forChildContentContainer:)](/documentation/swiftui/uihostingcontroller/preferredcontentsizedidchange(forchildcontentcontainer:))
- [sizeThatFits(in:)](/documentation/swiftui/uihostingcontroller/sizethatfits(in:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
