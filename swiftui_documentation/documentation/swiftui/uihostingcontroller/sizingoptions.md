---
title: sizingOptions
description: The options for how the hosting controller tracks changes to the size of its SwiftUI content.
source: https://developer.apple.com/documentation/swiftui/uihostingcontroller/sizingoptions
timestamp: 2025-10-29T00:11:59.436Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingcontroller](/documentation/swiftui/uihostingcontroller)

**Instance Property**

# sizingOptions

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, tvOS 16.0+, visionOS 1.0+

> The options for how the hosting controller tracks changes to the size of its SwiftUI content.

```swift
@MainActor @preconcurrency var sizingOptions: UIHostingControllerSizingOptions { get set }
```

## Discussion

The default value is the empty set.

## Managing the size

- [preferredContentSizeDidChange(forChildContentContainer:)](/documentation/swiftui/uihostingcontroller/preferredcontentsizedidchange(forchildcontentcontainer:))
- [sizeThatFits(in:)](/documentation/swiftui/uihostingcontroller/sizethatfits(in:))
- [safeAreaRegions](/documentation/swiftui/uihostingcontroller/safearearegions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
