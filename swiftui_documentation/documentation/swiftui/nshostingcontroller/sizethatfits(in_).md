---
title: sizeThatFits(in:)
description: Calculates and returns the most appropriate size for the current view.
source: https://developer.apple.com/documentation/swiftui/nshostingcontroller/sizethatfits(in:)
timestamp: 2025-10-29T00:14:32.153Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nshostingcontroller](/documentation/swiftui/nshostingcontroller)

**Instance Method**

# sizeThatFits(in:)

**Available on:** macOS 10.15+

> Calculates and returns the most appropriate size for the current view.

```swift
@MainActor @preconcurrency func sizeThatFits(in size: CGSize) -> CGSize
```

## Parameters

**size**

The proposed new size for the view.



## Return Value

The size that offers the best fit for the root view and its contents.

## Configuring the controller

- [preferredContentSize](/documentation/swiftui/nshostingcontroller/preferredcontentsize)
- [sizingOptions](/documentation/swiftui/nshostingcontroller/sizingoptions)
- [safeAreaRegions](/documentation/swiftui/nshostingcontroller/safearearegions)
- [sceneBridgingOptions](/documentation/swiftui/nshostingcontroller/scenebridgingoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
