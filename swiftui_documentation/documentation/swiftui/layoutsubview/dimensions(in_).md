---
title: dimensions(in:)
description: Asks the subview for its dimensions and alignment guides.
source: https://developer.apple.com/documentation/swiftui/layoutsubview/dimensions(in:)
timestamp: 2025-10-29T00:14:24.343Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layoutsubview](/documentation/swiftui/layoutsubview)

**Instance Method**

# dimensions(in:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Asks the subview for its dimensions and alignment guides.

```swift
func dimensions(in proposal: ProposedViewSize) -> ViewDimensions
```

## Parameters

**proposal**

A proposed size for the subview. In SwiftUI, views choose their own size, but can take a size proposal from their parent view into account when doing so.



## Return Value

A [View Dimensions](/documentation/swiftui/viewdimensions) instance that includes a height and width, as well as a set of alignment guides.

## Discussion

Call this method to ask a subview of a custom [Layout](/documentation/swiftui/layout) type about its size and alignment properties. You can call it from your implementation of any of that protocol’s methods, like [placeSubviews(in:proposal:subviews:cache:)](/documentation/swiftui/layout/placesubviews(in:proposal:subviews:cache:)) or [sizeThatFits(proposal:subviews:cache:)](/documentation/swiftui/layout/sizethatfits(proposal:subviews:cache:)), to get information for your layout calculations.

When you call this method, you propose a size using the `proposal` parameter. The subview can choose its own size, but might take the proposal into account. You can call this method more than once with different proposals to find out if the view is flexible. For example, you can propose:

- [zero](/documentation/swiftui/proposedviewsize/zero) to get the subview’s minimum size.
- [infinity](/documentation/swiftui/proposedviewsize/infinity) to get the subview’s maximum size.
- [unspecified](/documentation/swiftui/proposedviewsize/unspecified) to get the subview’s ideal size.

If you need only the view’s height and width, you can use the [sizeThatFits(_:)](/documentation/swiftui/layoutsubview/sizethatfits(_:)) method instead.

## Getting subview characteristics

- [sizeThatFits(_:)](/documentation/swiftui/layoutsubview/sizethatfits(_:))
- [spacing](/documentation/swiftui/layoutsubview/spacing)
- [priority](/documentation/swiftui/layoutsubview/priority)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
