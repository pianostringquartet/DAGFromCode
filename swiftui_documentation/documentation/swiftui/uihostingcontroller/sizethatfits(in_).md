---
title: sizeThatFits(in:)
description: Calculates and returns the most appropriate size for the current view.
source: https://developer.apple.com/documentation/swiftui/uihostingcontroller/sizethatfits(in:)
timestamp: 2025-10-29T00:09:27.138Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingcontroller](/documentation/swiftui/uihostingcontroller)

**Instance Method**

# sizeThatFits(in:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Calculates and returns the most appropriate size for the current view.

```swift
@MainActor @preconcurrency func sizeThatFits(in size: CGSize) -> CGSize
```

## Parameters

**size**

The proposed new size for the view.



## Return Value

The size that offers the best fit for the root view and its contents.

## Managing the size

- [sizingOptions](/documentation/swiftui/uihostingcontroller/sizingoptions)
- [preferredContentSizeDidChange(forChildContentContainer:)](/documentation/swiftui/uihostingcontroller/preferredcontentsizedidchange(forchildcontentcontainer:))
- [safeAreaRegions](/documentation/swiftui/uihostingcontroller/safearearegions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
