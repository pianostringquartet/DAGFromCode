---
title: infinity
description: A size proposal that contains infinity in both dimensions.
source: https://developer.apple.com/documentation/swiftui/proposedviewsize/infinity
timestamp: 2025-10-29T00:13:51.429Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [proposedviewsize](/documentation/swiftui/proposedviewsize)

**Type Property**

# infinity

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A size proposal that contains infinity in both dimensions.

```swift
static let infinity: ProposedViewSize
```

## Discussion

Both dimensions contain doc://com.apple.documentation/documentation/CoreFoundation/CGFloat/1454161-infinity in this size proposal. Subviews of a custom layout return their maximum size when you propose this value using the [dimensions(in:)](/documentation/swiftui/layoutsubview/dimensions(in:)) method. A custom layout should also return its maximum size from the [sizeThatFits(proposal:subviews:cache:)](/documentation/swiftui/layout/sizethatfits(proposal:subviews:cache:)) method for this value.

## Getting standard proposals

- [zero](/documentation/swiftui/proposedviewsize/zero)
- [unspecified](/documentation/swiftui/proposedviewsize/unspecified)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
