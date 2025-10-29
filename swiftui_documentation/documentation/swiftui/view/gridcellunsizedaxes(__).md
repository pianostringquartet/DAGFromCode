---
title: gridCellUnsizedAxes(_:)
description: Asks grid layouts not to offer the view extra size in the specified axes.
source: https://developer.apple.com/documentation/swiftui/view/gridcellunsizedaxes(_:)
timestamp: 2025-10-29T00:13:01.547Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# gridCellUnsizedAxes(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Asks grid layouts not to offer the view extra size in the specified axes.

```swift
nonisolated func gridCellUnsizedAxes(_ axes: Axis.Set) -> some View
```

## Parameters

**axes**

The dimensions in which the grid shouldn’t offer the view a share of any available space. This prevents a flexible view like a [Spacer](/documentation/swiftui/spacer), [Divider](/documentation/swiftui/divider), or [Color](/documentation/swiftui/color) from defining the size of a row or column.



## Return Value

A view that doesn’t ask an enclosing grid for extra size in one or more axes.

## Discussion

Use this modifier to prevent a flexible view from taking more space on the specified axes than the other cells in a row or column require. For example, consider the following [Grid](/documentation/swiftui/grid) that places a [Divider](/documentation/swiftui/divider) between two rows of content:

```swift
Grid {
    GridRow {
        Text("Hello")
        Image(systemName: "globe")
    }
    Divider()
    GridRow {
        Image(systemName: "hand.wave")
        Text("World")
    }
}
```

The text and images all have ideal widths for their content. However, because a divider takes as much space as its parent offers, the grid fills the width of the display, expanding all the other cells to match:



You can prevent the grid from giving the divider more width than the other cells require by adding the modifier with the [horizontal](/documentation/swiftui/axis/horizontal) parameter:

```swift
Divider()
    .gridCellUnsizedAxes(.horizontal)
```

This restores the grid to the width that it would have without the divider:



## Statically arranging views in two dimensions

- [Grid](/documentation/swiftui/grid)
- [GridRow](/documentation/swiftui/gridrow)
- [gridCellColumns(_:)](/documentation/swiftui/view/gridcellcolumns(_:))
- [gridCellAnchor(_:)](/documentation/swiftui/view/gridcellanchor(_:))
- [gridColumnAlignment(_:)](/documentation/swiftui/view/gridcolumnalignment(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
