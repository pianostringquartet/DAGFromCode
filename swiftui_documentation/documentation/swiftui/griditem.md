---
title: GridItem
description: A description of a row or a column in a lazy grid.
source: https://developer.apple.com/documentation/swiftui/griditem
timestamp: 2025-10-29T00:14:58.906Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# GridItem

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A description of a row or a column in a lazy grid.

```swift
struct GridItem
```

## Overview

Use an array of `GridItem` instances to configure the layout of items in a lazy grid. Each grid item in the array specifies layout properties like size and spacing for the rows of a [Lazy HGrid](/documentation/swiftui/lazyhgrid) or the columns of a [Lazy VGrid](/documentation/swiftui/lazyvgrid). The following example defines four rows for a horizontal grid, each with different characteristics:

```swift
struct GridItemDemo: View {
    let rows = [
        GridItem(.fixed(30), spacing: 1),
        GridItem(.fixed(60), spacing: 10),
        GridItem(.fixed(90), spacing: 20),
        GridItem(.fixed(10), spacing: 50)
    ]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 5) {
                ForEach(0...300, id: \.self) { _ in
                    Color.red.frame(width: 30)
                    Color.green.frame(width: 30)
                    Color.blue.frame(width: 30)
                    Color.yellow.frame(width: 30)
                }
            }
        }
    }
}
```

A lazy horizontal grid sets the width of each column based on the widest cell in the column. It can do this because it has access to all of the views in a given column at once. In the example above, the [Color](/documentation/swiftui/color) views always have the same fixed width, resulting in a uniform column width across the whole grid.

However, a lazy horizontal grid doesn’t generally have access to all the views in a row, because it generates new cells as people scroll through information in your app. Instead, it relies on a grid item for information about each row. The example above indicates a different fixed height for each row, and sets a different amount of spacing to appear after each row:



## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a grid item

- [init(_:spacing:alignment:)](/documentation/swiftui/griditem/init(_:spacing:alignment:)) Creates a grid item with the specified size, spacing, and alignment.

## Inspecting grid item properties

- [alignment](/documentation/swiftui/griditem/alignment) The alignment to use when placing each view.
- [spacing](/documentation/swiftui/griditem/spacing) The spacing to the next item.
- [size](/documentation/swiftui/griditem/size-swift.property) The size of the item, which is the width of a column item or the height of a row item.
- [GridItem.Size](/documentation/swiftui/griditem/size-swift.enum) The size in the minor axis of one or more rows or columns in a grid layout.

## Dynamically arranging views in two dimensions

- [LazyHGrid](/documentation/swiftui/lazyhgrid)
- [LazyVGrid](/documentation/swiftui/lazyvgrid)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
