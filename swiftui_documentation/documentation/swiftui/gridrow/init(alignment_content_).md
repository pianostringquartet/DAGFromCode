---
title: init(alignment:content:)
description: Creates a horizontal row of child views in a grid.
source: https://developer.apple.com/documentation/swiftui/gridrow/init(alignment:content:)
timestamp: 2025-10-29T00:12:50.449Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gridrow](/documentation/swiftui/gridrow)

**Initializer**

# init(alignment:content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a horizontal row of child views in a grid.

```swift
init(alignment: VerticalAlignment? = nil, @ViewBuilder content: () -> Content)
```

## Parameters

**alignment**

An optional [Vertical Alignment](/documentation/swiftui/verticalalignment) for the row. If you don’t specify a value, the row uses the vertical alignment component of the [Alignment](/documentation/swiftui/alignment) parameter that you specify in the grid’s [init(alignment:horizontalSpacing:verticalSpacing:content:)](/documentation/swiftui/grid/init(alignment:horizontalspacing:verticalspacing:content:)) initializer, which is [center](/documentation/swiftui/verticalalignment/center) by default.



**content**

The builder closure that contains the child views. Each view in the closure implicitly maps to a cell in the grid.



## Discussion

Use this initializer to create a [Grid Row](/documentation/swiftui/gridrow) inside of a [Grid](/documentation/swiftui/grid). Provide a content closure that defines the cells of the row, and optionally customize the vertical alignment of content within each cell. The following example customizes the vertical alignment of the cells in the first and third rows:

```swift
Grid(alignment: .trailing) {
    GridRow(alignment: .top) { // Use top vertical alignment.
        Text("Top")
        Color.red.frame(width: 1, height: 50)
        Color.blue.frame(width: 50, height: 1)
    }
    GridRow { // Use the default (center) alignment.
        Text("Center")
        Color.red.frame(width: 1, height: 50)
        Color.blue.frame(width: 50, height: 1)
    }
    GridRow(alignment: .bottom) { // Use bottom vertical alignment.
        Text("Bottom")
        Color.red.frame(width: 1, height: 50)
        Color.blue.frame(width: 50, height: 1)
    }
}
```

The example above specifies [trailing](/documentation/swiftui/alignment/trailing) alignment for the grid, which is composed of [center](/documentation/swiftui/verticalalignment/center) vertical alignment and [trailing](/documentation/swiftui/horizontalalignment/trailing) horizontal alignment. The middle row relies on the center vertical alignment, but the other two rows specify custom vertical alignments:



> [!IMPORTANT]
> A grid row behaves like a [Group](/documentation/swiftui/group) if you create it outside of a grid.

To override column alignment, use [gridColumnAlignment(_:)](/documentation/swiftui/view/gridcolumnalignment(_:)). To override alignment for a single cell, use [gridCellAnchor(_:)](/documentation/swiftui/view/gridcellanchor(_:)).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
