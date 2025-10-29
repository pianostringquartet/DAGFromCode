---
title: init(alignment:horizontalSpacing:verticalSpacing:content:)
description: Creates a grid with the specified spacing, alignment, and child views.
source: https://developer.apple.com/documentation/swiftui/grid/init(alignment:horizontalspacing:verticalspacing:content:)
timestamp: 2025-10-29T00:13:03.045Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [grid](/documentation/swiftui/grid)

**Initializer**

# init(alignment:horizontalSpacing:verticalSpacing:content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a grid with the specified spacing, alignment, and child views.

```swift
init(alignment: Alignment = .center, horizontalSpacing: CGFloat? = nil, verticalSpacing: CGFloat? = nil, @ViewBuilder content: () -> Content)
```

## Parameters

**alignment**

The guide for aligning the child views within the space allocated for a given cell. The default is [center](/documentation/swiftui/alignment/center).



**horizontalSpacing**

The horizontal distance between each cell, given in points. The value is `nil` by default, which results in a default distance between cells that’s appropriate for the platform.



**verticalSpacing**

The vertical distance between each cell, given in points. The value is `nil` by default, which results in a default distance between cells that’s appropriate for the platform.



**content**

A closure that creates the grid’s rows.



## Discussion

Use this initializer to create a [Grid](/documentation/swiftui/grid). Provide a content closure that defines the rows of the grid, and optionally customize the spacing between cells and the alignment of content within each cell. The following example customizes the spacing between cells:

```swift
Grid(horizontalSpacing: 30, verticalSpacing: 30) {
    ForEach(0..<5) { row in
        GridRow {
            ForEach(0..<5) { column in
                Text("(\(column), \(row))")
            }
        }
    }
}
```

You can list rows and the cells within rows directly, or you can use a [For Each](/documentation/swiftui/foreach) structure to generate either, as the example above does:



By default, the grid’s alignment value applies to all of the cells in the grid. However, you can also change the alignment for particular cells or groups of cells:

- Override the vertical alignment for the cells in a row by specifying a [Vertical Alignment](/documentation/swiftui/verticalalignment) parameter to the corresponding row’s [init(alignment:content:)](/documentation/swiftui/gridrow/init(alignment:content:)) initializer.
- Override the horizontal alignment for the cells in a column by adding a [gridColumnAlignment(_:)](/documentation/swiftui/view/gridcolumnalignment(_:)) view modifier to exactly one of the cells in the column, and specifying a [Horizontal Alignment](/documentation/swiftui/horizontalalignment) parameter.
- Specify a custom alignment anchor for a particular cell by using the [gridCellAnchor(_:)](/documentation/swiftui/view/gridcellanchor(_:)) modifier on the cell’s view.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
