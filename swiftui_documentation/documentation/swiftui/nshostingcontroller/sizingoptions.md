---
title: sizingOptions
description: The options for how the hosting controller’s view creates and updates constraints based on the size of its SwiftUI content.
source: https://developer.apple.com/documentation/swiftui/nshostingcontroller/sizingoptions
timestamp: 2025-10-29T00:12:55.950Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nshostingcontroller](/documentation/swiftui/nshostingcontroller)

**Instance Property**

# sizingOptions

**Available on:** macOS 13.0+

> The options for how the hosting controller’s view creates and updates constraints based on the size of its SwiftUI content.

```swift
@MainActor @preconcurrency var sizingOptions: NSHostingSizingOptions { get set }
```

## Discussion

NSHostingController can create minimum, maximum, and ideal (content size) constraints that are derived from its SwiftUI view content. These constraints are only created when Auto Layout constraints are otherwise being used in the containing window.

If the NSHostingController is set as the `contentViewController` of an `NSWindow`, it will also update the window’s `contentMinSize` and `contentMaxSize` based on the minimum and maximum size of its SwiftUI content.

`sizingOptions` defaults to `.standardBounds` (which includes `minSize`, `intrinsicContentSize`, and `maxSize`), but can be set to an explicit value to control this behavior. For instance, setting a value of `.minSize` will only create the constraints necessary to maintain the minimum size of the SwiftUI content, or setting a value of `[]` will create no constraints at all.

If a use case can make assumptions about the size of the `NSHostingController` relative to its displayed content, such as the always being displayed in a fixed frame, setting this to a value with fewer options can improve performance as it reduces the amount of layout measurements that need to be performed. If an `NSHostingController` has a `frame` that is smaller or larger than that required to display its SwiftUI content, the content will be centered within that frame.

## Configuring the controller

- [sizeThatFits(in:)](/documentation/swiftui/nshostingcontroller/sizethatfits(in:))
- [preferredContentSize](/documentation/swiftui/nshostingcontroller/preferredcontentsize)
- [safeAreaRegions](/documentation/swiftui/nshostingcontroller/safearearegions)
- [sceneBridgingOptions](/documentation/swiftui/nshostingcontroller/scenebridgingoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
