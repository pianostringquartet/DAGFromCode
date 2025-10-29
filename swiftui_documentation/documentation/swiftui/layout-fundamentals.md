---
title: Layout fundamentals
description: Arrange views inside built-in layout containers like stacks and grids.
source: https://developer.apple.com/documentation/swiftui/layout-fundamentals
timestamp: 2025-10-29T00:14:53.087Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Layout fundamentals

> Arrange views inside built-in layout containers like stacks and grids.

## Overview

Use layout containers to arrange the elements of your user interface. Stacks and grids update and adjust the positions of the subviews they contain in response to changes in content or interface dimensions. You can nest layout containers inside other layout containers to any depth to achieve complex layout effects.



To finetune the position, alignment, and other elements of a layout that you build with layout container views, see [Layout](/documentation/swiftui/layout-adjustments). To define custom layout containers, see [Custom](/documentation/swiftui/custom-layout). For design guidance, see [layout](/design/Human-Interface-Guidelines/layout) in the Human Interface Guidelines.

## Choosing a layout

- [Picking container views for your content](/documentation/swiftui/picking-container-views-for-your-content) Build flexible user interfaces by using stacks, grids, lists, and forms.

## Statically arranging views in one dimension

- [Building layouts with stack views](/documentation/swiftui/building-layouts-with-stack-views) Compose complex layouts from primitive container views.
- [HStack](/documentation/swiftui/hstack) A view that arranges its subviews in a horizontal line.
- [VStack](/documentation/swiftui/vstack) A view that arranges its subviews in a vertical line.

## Dynamically arranging views in one dimension

- [Grouping data with lazy stack views](/documentation/swiftui/grouping-data-with-lazy-stack-views) Split content into logical sections inside lazy stack views.
- [Creating performant scrollable stacks](/documentation/swiftui/creating-performant-scrollable-stacks) Display large numbers of repeated views efficiently with scroll views, stack views, and lazy stacks.
- [LazyHStack](/documentation/swiftui/lazyhstack) A view that arranges its children in a line that grows horizontally, creating items only as needed.
- [LazyVStack](/documentation/swiftui/lazyvstack) A view that arranges its children in a line that grows vertically, creating items only as needed.
- [PinnedScrollableViews](/documentation/swiftui/pinnedscrollableviews) A set of view types that may be pinned to the bounds of a scroll view.

## Statically arranging views in two dimensions

- [Grid](/documentation/swiftui/grid) A container view that arranges other views in a two dimensional layout.
- [GridRow](/documentation/swiftui/gridrow) A horizontal row in a two dimensional grid container.
- [gridCellColumns(_:)](/documentation/swiftui/view/gridcellcolumns(_:)) Tells a view that acts as a cell in a grid to span the specified number of columns.
- [gridCellAnchor(_:)](/documentation/swiftui/view/gridcellanchor(_:)) Specifies a custom alignment anchor for a view that acts as a grid cell.
- [gridCellUnsizedAxes(_:)](/documentation/swiftui/view/gridcellunsizedaxes(_:)) Asks grid layouts not to offer the view extra size in the specified axes.
- [gridColumnAlignment(_:)](/documentation/swiftui/view/gridcolumnalignment(_:)) Overrides the default horizontal alignment of the grid column that the view appears in.

## Dynamically arranging views in two dimensions

- [LazyHGrid](/documentation/swiftui/lazyhgrid) A container view that arranges its child views in a grid that grows horizontally, creating items only as needed.
- [LazyVGrid](/documentation/swiftui/lazyvgrid) A container view that arranges its child views in a grid that grows vertically, creating items only as needed.
- [GridItem](/documentation/swiftui/griditem) A description of a row or a column in a lazy grid.

## Layering views

- [Adding a background to your view](/documentation/swiftui/adding-a-background-to-your-view) Compose a background behind your view and extend it beyond the safe area insets.
- [ZStack](/documentation/swiftui/zstack) A view that overlays its subviews, aligning them in both axes.
- [zIndex(_:)](/documentation/swiftui/view/zindex(_:)) Controls the display order of overlapping views.
- [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:)) Layers the views that you specify behind this view.
- [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:)) Sets the view’s background to a style.
- [background(ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(ignoressafeareaedges:)) Sets the view’s background to the default background style.
- [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:)) Sets the view’s background to an insettable shape filled with a style.
- [background(in:fillStyle:)](/documentation/swiftui/view/background(in:fillstyle:)) Sets the view’s background to an insettable shape filled with the default background style.
- [overlay(alignment:content:)](/documentation/swiftui/view/overlay(alignment:content:)) Layers the views that you specify in front of this view.
- [overlay(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/overlay(_:ignoressafeareaedges:)) Layers the specified style in front of this view.
- [overlay(_:in:fillStyle:)](/documentation/swiftui/view/overlay(_:in:fillstyle:)) Layers a shape that you specify in front of this view.
- [backgroundMaterial](/documentation/swiftui/environmentvalues/backgroundmaterial) The material underneath the current view.
- [containerBackground(_:for:)](/documentation/swiftui/view/containerbackground(_:for:)) Sets the container background of the enclosing container using a view.
- [containerBackground(for:alignment:content:)](/documentation/swiftui/view/containerbackground(for:alignment:content:)) Sets the container background of the enclosing container using a view.
- [ContainerBackgroundPlacement](/documentation/swiftui/containerbackgroundplacement) The placement of a container background.

## Automatically choosing the layout that fits

- [ViewThatFits](/documentation/swiftui/viewthatfits) A view that adapts to the available space by providing the first child view that fits.

## Separators

- [Spacer](/documentation/swiftui/spacer) A flexible space that expands along the major axis of its containing stack layout, or on both axes if not contained in a stack.
- [Divider](/documentation/swiftui/divider) A visual element that can be used to separate other content.

## View layout

- [Layout adjustments](/documentation/swiftui/layout-adjustments)
- [Custom layout](/documentation/swiftui/custom-layout)
- [Lists](/documentation/swiftui/lists)
- [Tables](/documentation/swiftui/tables)
- [View groupings](/documentation/swiftui/view-groupings)
- [Scroll views](/documentation/swiftui/scroll-views)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
