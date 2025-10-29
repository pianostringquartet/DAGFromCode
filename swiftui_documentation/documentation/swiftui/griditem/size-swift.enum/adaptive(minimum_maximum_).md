---
title: GridItem.Size.adaptive(minimum:maximum:)
description: Multiple items in the space of a single flexible item.
source: https://developer.apple.com/documentation/swiftui/griditem/size-swift.enum/adaptive(minimum:maximum:)
timestamp: 2025-10-29T00:14:24.429Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [griditem](/documentation/swiftui/griditem) › [size-swift.enum](/documentation/swiftui/griditem/size-swift.enum)

**Case**

# GridItem.Size.adaptive(minimum:maximum:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Multiple items in the space of a single flexible item.

```swift
case adaptive(minimum: CGFloat, maximum: CGFloat = .infinity)
```

## Discussion

This size case places one or more items into the space assigned to a single `flexible` item, using the provided bounds and spacing to decide exactly how many items fit. This approach prefers to insert as many items of the `minimum` size as possible but lets them increase to the `maximum` size.

## Getting the sizes

- [GridItem.Size.fixed(_:)](/documentation/swiftui/griditem/size-swift.enum/fixed(_:))
- [GridItem.Size.flexible(minimum:maximum:)](/documentation/swiftui/griditem/size-swift.enum/flexible(minimum:maximum:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
