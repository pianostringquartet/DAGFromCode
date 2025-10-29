---
title: sizingOptions
description: The options for how the hosting view creates and updates constraints based on the size of its SwiftUI content.
source: https://developer.apple.com/documentation/swiftui/nshostingview/sizingoptions
timestamp: 2025-10-29T00:14:09.300Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nshostingview](/documentation/swiftui/nshostingview)

**Instance Property**

# sizingOptions

**Available on:** macOS 13.0+

> The options for how the hosting view creates and updates constraints based on the size of its SwiftUI content.

```swift
@MainActor @preconcurrency var sizingOptions: NSHostingSizingOptions { get set }
```

## Discussion

NSHostingView can create minimum, maximum, and ideal (content size) constraints that are derived from its SwiftUI view content. These constraints are only created when Auto Layout constraints are otherwise being used in the containing window.

If the NSHostingView is set as the `contentView` of an `NSWindow`, it will also update the window’s `contentMinSize` and `contentMaxSize` based on the minimum and maximum size of its SwiftUI content.

`sizingOptions` defaults to `.standardBounds` (which includes `minSize`, `intrinsicContentSize`, and `maxSize`), but can be set to an explicit value to control this behavior. For instance, setting a value of `.minSize` will only create the constraints necessary to maintain the minimum size of the SwiftUI content, or setting a value of `[]` will create no constraints at all.

If a use case can make assumptions about the size of the `NSHostingView` relative to its displayed content, such as the always being displayed in a fixed frame, setting this to a value with fewer options can improve performance as it reduces the amount of layout measurements that need to be performed. If an `NSHostingView` has a `frame` that is smaller or larger than that required to display its SwiftUI content, the content will be centered within that frame.

## Modifying the frame rectangle

- [intrinsicContentSize](/documentation/swiftui/nshostingview/intrinsiccontentsize)
- [setFrameSize(_:)](/documentation/swiftui/nshostingview/setframesize(_:))
- [firstBaselineOffsetFromTop](/documentation/swiftui/nshostingview/firstbaselineoffsetfromtop)
- [lastBaselineOffsetFromBottom](/documentation/swiftui/nshostingview/lastbaselineoffsetfrombottom)
- [firstTextLineCenter](/documentation/swiftui/nshostingview/firsttextlinecenter)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
