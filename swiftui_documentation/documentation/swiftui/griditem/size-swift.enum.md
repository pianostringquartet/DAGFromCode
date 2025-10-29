---
title: GridItem.Size
description: The size in the minor axis of one or more rows or columns in a grid layout.
source: https://developer.apple.com/documentation/swiftui/griditem/size-swift.enum
timestamp: 2025-10-29T00:09:51.624Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [griditem](/documentation/swiftui/griditem)

**Enumeration**

# GridItem.Size

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The size in the minor axis of one or more rows or columns in a grid layout.

```swift
enum Size
```

## Overview

Use a `Size` instance when you create a [Grid Item](/documentation/swiftui/griditem). The value tells a [Lazy HGrid](/documentation/swiftui/lazyhgrid) how to size its rows, or a [Lazy VGrid](/documentation/swiftui/lazyvgrid) how to size its columns.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the sizes

- [GridItem.Size.adaptive(minimum:maximum:)](/documentation/swiftui/griditem/size-swift.enum/adaptive(minimum:maximum:)) Multiple items in the space of a single flexible item.
- [GridItem.Size.fixed(_:)](/documentation/swiftui/griditem/size-swift.enum/fixed(_:)) A single item with the specified fixed size.
- [GridItem.Size.flexible(minimum:maximum:)](/documentation/swiftui/griditem/size-swift.enum/flexible(minimum:maximum:)) A single flexible item.

## Inspecting grid item properties

- [alignment](/documentation/swiftui/griditem/alignment)
- [spacing](/documentation/swiftui/griditem/spacing)
- [size](/documentation/swiftui/griditem/size-swift.property)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
