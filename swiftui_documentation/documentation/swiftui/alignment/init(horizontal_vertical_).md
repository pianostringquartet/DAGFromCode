---
title: init(horizontal:vertical:)
description: Creates a custom alignment value with the specified horizontal and vertical alignment guides.
source: https://developer.apple.com/documentation/swiftui/alignment/init(horizontal:vertical:)
timestamp: 2025-10-29T00:10:19.313Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [alignment](/documentation/swiftui/alignment)

**Initializer**

# init(horizontal:vertical:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a custom alignment value with the specified horizontal and vertical alignment guides.

```swift
init(horizontal: HorizontalAlignment, vertical: VerticalAlignment)
```

## Parameters

**horizontal**

The alignment on the horizontal axis.



**vertical**

The alignment on the vertical axis.



## Discussion

SwiftUI provides a variety of built-in alignments that combine built-in [Horizontal Alignment](/documentation/swiftui/horizontalalignment) and [Vertical Alignment](/documentation/swiftui/verticalalignment) guides. Use this initializer to create a custom alignment that makes use of a custom horizontal or vertical guide, or both.

For example, you can combine a custom vertical guide called `firstThird` with the built-in [center](/documentation/swiftui/horizontalalignment/center) guide, and use it to configure a [ZStack](/documentation/swiftui/zstack):

```swift
ZStack(alignment: Alignment(horizontal: .center, vertical: .firstThird)) {
    // ...
}
```

For more information about creating custom guides, including the code that creates the custom `firstThird` alignment in the example above, see [Alignment ID](/documentation/swiftui/alignmentid).

## Creating a custom alignment

- [horizontal](/documentation/swiftui/alignment/horizontal)
- [vertical](/documentation/swiftui/alignment/vertical)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
