---
title: Layout.Subviews
description: A collection of proxies for the subviews of a layout view.
source: https://developer.apple.com/documentation/swiftui/layout/subviews
timestamp: 2025-10-29T00:12:45.915Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layout](/documentation/swiftui/layout)

**Type Alias**

# Layout.Subviews

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A collection of proxies for the subviews of a layout view.

```swift
typealias Subviews = LayoutSubviews
```

## Discussion

This collection doesn’t store views. Instead it stores instances of [Layout Subview](/documentation/swiftui/layoutsubview), each of which acts as a proxy for one of the views arranged by the layout. Use the proxies to get information about the views, and to tell the views where to appear.

For more information about the behavior of the underlying collection type, see [Layout Subviews](/documentation/swiftui/layoutsubviews).

## Sizing the container and placing subviews

- [sizeThatFits(proposal:subviews:cache:)](/documentation/swiftui/layout/sizethatfits(proposal:subviews:cache:))
- [placeSubviews(in:proposal:subviews:cache:)](/documentation/swiftui/layout/placesubviews(in:proposal:subviews:cache:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
