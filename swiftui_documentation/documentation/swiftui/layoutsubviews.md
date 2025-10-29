---
title: LayoutSubviews
description: A collection of proxy values that represent the subviews of a layout view.
source: https://developer.apple.com/documentation/swiftui/layoutsubviews
timestamp: 2025-10-29T00:15:18.132Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# LayoutSubviews

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A collection of proxy values that represent the subviews of a layout view.

```swift
struct LayoutSubviews
```

## Overview

You receive a `LayoutSubviews` input to your implementations of [Layout](/documentation/swiftui/layout) protocol methods, like [placeSubviews(in:proposal:subviews:cache:)](/documentation/swiftui/layout/placesubviews(in:proposal:subviews:cache:)) and [sizeThatFits(proposal:subviews:cache:)](/documentation/swiftui/layout/sizethatfits(proposal:subviews:cache:)). The `subviews` parameter (which the protocol aliases to the [Subviews](/documentation/swiftui/layout/subviews) type) is a collection that contains proxies for the layout’s subviews (of type [Layout Subview](/documentation/swiftui/layoutsubview)). The proxies appear in the collection in the same order that they appear in the [View Builder](/documentation/swiftui/viewbuilder) input to the layout container. Use the proxies to perform layout operations.

Access the proxies in the collection as you would the contents of any Swift random-access collection. For example, you can enumerate all of the subviews and their indices to inspect or operate on them:

```swift
for (index, subview) in subviews.enumerated() {
    // ...
}
```

## Conforms To

- [BidirectionalCollection](/documentation/Swift/BidirectionalCollection)
- [Collection](/documentation/Swift/Collection)
- [Equatable](/documentation/Swift/Equatable)
- [RandomAccessCollection](/documentation/Swift/RandomAccessCollection)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [Sequence](/documentation/Swift/Sequence)

## Getting the layout direction

- [layoutDirection](/documentation/swiftui/layoutsubviews/layoutdirection) The layout direction inherited by the container view.

## Accessing subviews

- [subscript(_:)](/documentation/swiftui/layoutsubviews/subscript(_:)) Gets the subview proxies in the specified range.
- [startIndex](/documentation/swiftui/layoutsubviews/startindex) The index of the first subview.
- [endIndex](/documentation/swiftui/layoutsubviews/endindex) An index that’s one higher than the last subview.
- [LayoutSubviews.Element](/documentation/swiftui/layoutsubviews/element) A type that contains a proxy value.
- [LayoutSubviews.Index](/documentation/swiftui/layoutsubviews/index) A type that you can use to index proxy values.
- [LayoutSubviews.SubSequence](/documentation/swiftui/layoutsubviews/subsequence) A type that contains a subsequence of proxy values.

## Creating a custom layout container

- [Composing custom layouts with SwiftUI](/documentation/swiftui/composing-custom-layouts-with-swiftui)
- [Layout](/documentation/swiftui/layout)
- [LayoutSubview](/documentation/swiftui/layoutsubview)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
