---
title: unspecified
description: The proposed size with both dimensions left unspecified.
source: https://developer.apple.com/documentation/swiftui/proposedviewsize/unspecified
timestamp: 2025-10-29T00:10:58.818Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [proposedviewsize](/documentation/swiftui/proposedviewsize)

**Type Property**

# unspecified

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The proposed size with both dimensions left unspecified.

```swift
static let unspecified: ProposedViewSize
```

## Discussion

Both dimensions contain `nil` in this size proposal. Subviews of a custom layout return their ideal size when you propose this value using the [dimensions(in:)](/documentation/swiftui/layoutsubview/dimensions(in:)) method. A custom layout should also return its ideal size from the [sizeThatFits(proposal:subviews:cache:)](/documentation/swiftui/layout/sizethatfits(proposal:subviews:cache:)) method for this value.

## Getting standard proposals

- [zero](/documentation/swiftui/proposedviewsize/zero)
- [infinity](/documentation/swiftui/proposedviewsize/infinity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
