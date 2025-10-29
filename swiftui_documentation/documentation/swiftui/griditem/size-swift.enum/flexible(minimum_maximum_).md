---
title: GridItem.Size.flexible(minimum:maximum:)
description: A single flexible item.
source: https://developer.apple.com/documentation/swiftui/griditem/size-swift.enum/flexible(minimum:maximum:)
timestamp: 2025-10-29T00:13:26.798Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [griditem](/documentation/swiftui/griditem) › [size-swift.enum](/documentation/swiftui/griditem/size-swift.enum)

**Case**

# GridItem.Size.flexible(minimum:maximum:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A single flexible item.

```swift
case flexible(minimum: CGFloat = 10, maximum: CGFloat = .infinity)
```

## Discussion

The size of this item is the size of the grid with spacing and inflexible items removed, divided by the number of flexible items, clamped to the provided bounds.

## Getting the sizes

- [GridItem.Size.adaptive(minimum:maximum:)](/documentation/swiftui/griditem/size-swift.enum/adaptive(minimum:maximum:))
- [GridItem.Size.fixed(_:)](/documentation/swiftui/griditem/size-swift.enum/fixed(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
