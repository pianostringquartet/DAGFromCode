---
title: gridColumnAlignment(_:)
description: Overrides the default horizontal alignment of the grid column that the view appears in.
source: https://developer.apple.com/documentation/swiftui/view/gridcolumnalignment(_:)
timestamp: 2025-10-29T00:15:18.603Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# gridColumnAlignment(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Overrides the default horizontal alignment of the grid column that the view appears in.

```swift
nonisolated func gridColumnAlignment(_ guide: HorizontalAlignment) -> some View
```

## Parameters

**guide**

The [Horizontal Alignment](/documentation/swiftui/horizontalalignment) guide to use for the grid column that the view appears in.



## Return Value

A view that uses the specified horizontal alignment, and that causes all cells in the same column of a grid to use the same alignment.

## Discussion

You set a default alignment for the cells in a grid in both vertical and horizontal dimensions when you create the grid with the [init(alignment:horizontalSpacing:verticalSpacing:content:)](/documentation/swiftui/grid/init(alignment:horizontalspacing:verticalspacing:content:)) initializer. However, you can use the `gridColumnAlignment(_:)` modifier to override the horizontal alignment of a column within the grid. The following example sets a grid’s alignment to [leading First Text Baseline](/documentation/swiftui/alignment/leadingfirsttextbaseline), and then sets the first column to use [trailing](/documentation/swiftui/horizontalalignment/trailing) alignment:

```swift
Grid(alignment: .leadingFirstTextBaseline) {
    GridRow {
        Text("Regular font:")
            .gridColumnAlignment(.trailing) // Align the entire first column.
        Text("Helvetica 12")
        Button("Select...") { }
    }
    GridRow {
        Text("Fixed-width font:")
        Text("Menlo Regular 11")
        Button("Select...") { }
    }
    GridRow {
        Color.clear
            .gridCellUnsizedAxes([.vertical, .horizontal])
        Toggle("Use fixed-width font for new documents", isOn: $isOn)
            .gridCellColumns(2)
    }
}
```

This creates the layout of a typical macOS configuration view, with the trailing edge of the first column flush with the leading edge of the second column:



Add the modifier to only one cell in a column. The grid automatically aligns all cells in that column the same way. You get undefined behavior if you apply different alignments to different cells in the same column.

To override row alignment, see [init(alignment:content:)](/documentation/swiftui/gridrow/init(alignment:content:)). To override alignment for a single cell, see [gridCellAnchor(_:)](/documentation/swiftui/view/gridcellanchor(_:)).

## Statically arranging views in two dimensions

- [Grid](/documentation/swiftui/grid)
- [GridRow](/documentation/swiftui/gridrow)
- [gridCellColumns(_:)](/documentation/swiftui/view/gridcellcolumns(_:))
- [gridCellAnchor(_:)](/documentation/swiftui/view/gridcellanchor(_:))
- [gridCellUnsizedAxes(_:)](/documentation/swiftui/view/gridcellunsizedaxes(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
