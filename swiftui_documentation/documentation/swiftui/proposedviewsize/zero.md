---
title: zero
description: A size proposal that contains zero in both dimensions.
source: https://developer.apple.com/documentation/swiftui/proposedviewsize/zero
timestamp: 2025-10-29T00:12:29.297Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [proposedviewsize](/documentation/swiftui/proposedviewsize)

**Type Property**

# zero

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A size proposal that contains zero in both dimensions.

```swift
static let zero: ProposedViewSize
```

## Discussion

Subviews of a custom layout return their minimum size when you propose this value using the [dimensions(in:)](/documentation/swiftui/layoutsubview/dimensions(in:)) method. A custom layout should also return its minimum size from the [sizeThatFits(proposal:subviews:cache:)](/documentation/swiftui/layout/sizethatfits(proposal:subviews:cache:)) method for this value.

## Getting standard proposals

- [infinity](/documentation/swiftui/proposedviewsize/infinity)
- [unspecified](/documentation/swiftui/proposedviewsize/unspecified)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
