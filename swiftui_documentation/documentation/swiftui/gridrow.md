---
title: GridRow
description: A horizontal row in a two dimensional grid container.
source: https://developer.apple.com/documentation/swiftui/gridrow
timestamp: 2025-10-29T00:11:27.160Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# GridRow

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A horizontal row in a two dimensional grid container.

```swift
@frozen struct GridRow<Content> where Content : View
```

## Overview

Use one or more `GridRow` instances to define the rows of a [Grid](/documentation/swiftui/grid) container. The child views inside the row define successive grid cells. You can add rows to the grid explicitly, or use the [For Each](/documentation/swiftui/foreach) structure to generate multiple rows. Similarly, you can add cells to the row explicitly or you can use [For Each](/documentation/swiftui/foreach) to generate multiple cells inside the row. The following example mixes these strategies:

```swift
Grid {
    GridRow {
        Color.clear
            .gridCellUnsizedAxes([.horizontal, .vertical])
        ForEach(1..<4) { column in
            Text("C\(column)")
        }
    }
    ForEach(1..<4) { row in
        GridRow {
            Text("R\(row)")
            ForEach(1..<4) { _ in
                Circle().foregroundStyle(.mint)
            }
        }
    }
}
```

The grid in the example above has an explicit first row and three generated rows. Similarly, each row has an explicit first cell and three generated cells:



To create an empty cell, use something invisible, like the [clear](/documentation/swiftui/shapestyle/clear) color that appears in the first column of the first row in the example above. However, if you use a flexible view like a [Color](/documentation/swiftui/color) or a [Spacer](/documentation/swiftui/spacer), you might also need to add the [gridCellUnsizedAxes(_:)](/documentation/swiftui/view/gridcellunsizedaxes(_:)) modifier to prevent the view from taking up more space than the other cells in the row or column need.

> [!IMPORTANT]
> You can’t use [Empty View](/documentation/swiftui/emptyview) to create a blank cell because that resolves to the absence of a view and doesn’t generate a cell.

By default, the cells in the row use the [Alignment](/documentation/swiftui/alignment) that you define when you initialize the [Grid](/documentation/swiftui/grid). However, you can override the vertical alignment for the cells in a row by providing a [Vertical Alignment](/documentation/swiftui/verticalalignment) value to the row’s [init(alignment:content:)](/documentation/swiftui/gridrow/init(alignment:content:)) initializer.

If you apply a view modifier to a row, the row applies the modifier to all of the cells, similar to how a [Group](/documentation/swiftui/group) behaves. For example,  if you apply the [border(_:width:)](/documentation/swiftui/view/border(_:width:)) modifier to a row, SwiftUI draws a border on each cell in the row rather than around the row.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [View](/documentation/swiftui/view)

## Creating a grid row

- [init(alignment:content:)](/documentation/swiftui/gridrow/init(alignment:content:)) Creates a horizontal row of child views in a grid.

## Statically arranging views in two dimensions

- [Grid](/documentation/swiftui/grid)
- [gridCellColumns(_:)](/documentation/swiftui/view/gridcellcolumns(_:))
- [gridCellAnchor(_:)](/documentation/swiftui/view/gridcellanchor(_:))
- [gridCellUnsizedAxes(_:)](/documentation/swiftui/view/gridcellunsizedaxes(_:))
- [gridColumnAlignment(_:)](/documentation/swiftui/view/gridcolumnalignment(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
