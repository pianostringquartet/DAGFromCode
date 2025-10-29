---
title: sizeThatFits(_:)
description: Asks the subview for its size.
source: https://developer.apple.com/documentation/swiftui/layoutsubview/sizethatfits(_:)
timestamp: 2025-10-29T00:10:09.592Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layoutsubview](/documentation/swiftui/layoutsubview)

**Instance Method**

# sizeThatFits(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Asks the subview for its size.

```swift
func sizeThatFits(_ proposal: ProposedViewSize) -> CGSize
```

## Parameters

**proposal**

A proposed size for the subview. In SwiftUI, views choose their own size, but can take a size proposal from their parent view into account when doing so.



## Return Value

The size that the subview chooses for itself, given the proposal from its container view.

## Discussion

Use this method as a convenience to get the [width](/documentation/swiftui/viewdimensions/width) and [height](/documentation/swiftui/viewdimensions/height) properties of the [View Dimensions](/documentation/swiftui/viewdimensions) instance returned by the [dimensions(in:)](/documentation/swiftui/layoutsubview/dimensions(in:)) method, reported as a [CGSize](/documentation/CoreFoundation/CGSize) instance.

## Getting subview characteristics

- [dimensions(in:)](/documentation/swiftui/layoutsubview/dimensions(in:))
- [spacing](/documentation/swiftui/layoutsubview/spacing)
- [priority](/documentation/swiftui/layoutsubview/priority)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
