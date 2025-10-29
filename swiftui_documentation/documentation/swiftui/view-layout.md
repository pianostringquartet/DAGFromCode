---
title: Layout modifiers
description: Tell a view how to arrange itself within a view hierarchy by adjusting its size, position, alignment, padding, and so on.
source: https://developer.apple.com/documentation/swiftui/view-layout
timestamp: 2025-10-29T00:14:55.932Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Layout modifiers

> Tell a view how to arrange itself within a view hierarchy by adjusting its size, position, alignment, padding, and so on.

## Overview

Use layout modifiers to fine tune the placement of views in a view hierarchy. You can adjust or constrain the size, position, and alignment of a view. You can also add padding around a view, and indicate how the view interacts with system-defined safe areas.

To get started arranging views, see [Layout](/documentation/swiftui/layout-fundamentals). To make adjustments to a basic layout, see [Layout](/documentation/swiftui/layout-adjustments).

## Size

- [frame(width:height:alignment:)](/documentation/swiftui/view/frame(width:height:alignment:)) Positions this view within an invisible frame with the specified size.
- [frame(depth:alignment:)](/documentation/swiftui/view/frame(depth:alignment:)) Positions this view within an invisible frame with the specified depth.
- [frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)](/documentation/swiftui/view/frame(minwidth:idealwidth:maxwidth:minheight:idealheight:maxheight:alignment:)) Positions this view within an invisible frame having the specified size constraints.
- [frame(minDepth:idealDepth:maxDepth:alignment:)](/documentation/swiftui/view/frame(mindepth:idealdepth:maxdepth:alignment:)) Positions this view within an invisible frame having the specified depth constraints.
- [containerRelativeFrame(_:alignment:)](/documentation/swiftui/view/containerrelativeframe(_:alignment:)) Positions this view within an invisible frame with a size relative to the nearest container.
- [containerRelativeFrame(_:alignment:_:)](/documentation/swiftui/view/containerrelativeframe(_:alignment:_:)) Positions this view within an invisible frame with a size relative to the nearest container.
- [containerRelativeFrame(_:count:span:spacing:alignment:)](/documentation/swiftui/view/containerrelativeframe(_:count:span:spacing:alignment:)) Positions this view within an invisible frame with a size relative to the nearest container.
- [fixedSize()](/documentation/swiftui/view/fixedsize()) Fixes this view at its ideal size.
- [fixedSize(horizontal:vertical:)](/documentation/swiftui/view/fixedsize(horizontal:vertical:)) Fixes this view at its ideal size in the specified dimensions.
- [layoutPriority(_:)](/documentation/swiftui/view/layoutpriority(_:)) Sets the priority by which a parent layout should apportion space to this child.

## Position

- [position(_:)](/documentation/swiftui/view/position(_:)) Positions the center of this view at the specified point in its parent’s coordinate space.
- [position(x:y:)](/documentation/swiftui/view/position(x:y:)) Positions the center of this view at the specified coordinates in its parent’s coordinate space.
- [offset(_:)](/documentation/swiftui/view/offset(_:)) Offset this view by the horizontal and vertical amount specified in the offset parameter.
- [offset(x:y:)](/documentation/swiftui/view/offset(x:y:)) Offset this view by the specified horizontal and vertical distances.
- [offset(z:)](/documentation/swiftui/view/offset(z:)) Brings a view forward in Z by the provided distance in points.
- [coordinateSpace(_:)](/documentation/swiftui/view/coordinatespace(_:)) Assigns a name to the view’s coordinate space, so other code can operate on dimensions like points and sizes relative to the named space.

## Alignment

- [alignmentGuide(_:computeValue:)](/documentation/swiftui/view/alignmentguide(_:computevalue:)) Sets the view’s horizontal alignment.

## Padding and spacing

- [padding(_:)](/documentation/swiftui/view/padding(_:)) Adds a different padding amount to each edge of this view.
- [padding(_:_:)](/documentation/swiftui/view/padding(_:_:)) Adds an equal padding amount to specific edges of this view.
- [padding3D(_:)](/documentation/swiftui/view/padding3d(_:)) Pads this view using the edge insets you specify.
- [padding3D(_:_:)](/documentation/swiftui/view/padding3d(_:_:)) Pads this view using the edge insets you specify.
- [listRowInsets(_:)](/documentation/swiftui/view/listrowinsets(_:)) Applies an inset to the rows in a list.
- [scenePadding(_:)](/documentation/swiftui/view/scenepadding(_:)) Adds padding to the specified edges of this view using an amount that’s appropriate for the current scene.
- [scenePadding(_:edges:)](/documentation/swiftui/view/scenepadding(_:edges:)) Adds a specified kind of padding to the specified edges of this view using an amount that’s appropriate for the current scene.
- [listRowSpacing(_:)](/documentation/swiftui/view/listrowspacing(_:)) Sets the vertical spacing between two adjacent rows in a List.
- [listSectionSpacing(_:)](/documentation/swiftui/view/listsectionspacing(_:)) Sets the spacing between adjacent sections in a  to a custom value.

## Grid configuration

- [gridCellColumns(_:)](/documentation/swiftui/view/gridcellcolumns(_:)) Tells a view that acts as a cell in a grid to span the specified number of columns.
- [gridCellAnchor(_:)](/documentation/swiftui/view/gridcellanchor(_:)) Specifies a custom alignment anchor for a view that acts as a grid cell.
- [gridCellUnsizedAxes(_:)](/documentation/swiftui/view/gridcellunsizedaxes(_:)) Asks grid layouts not to offer the view extra size in the specified axes.
- [gridColumnAlignment(_:)](/documentation/swiftui/view/gridcolumnalignment(_:)) Overrides the default horizontal alignment of the grid column that the view appears in.

## Safe area and margins

- [ignoresSafeArea(_:edges:)](/documentation/swiftui/view/ignoressafearea(_:edges:)) Expands the safe area of a view.
- [safeAreaInset(edge:alignment:spacing:content:)](/documentation/swiftui/view/safeareainset(edge:alignment:spacing:content:)) Shows the specified content beside the modified view.
- [safeAreaPadding(_:)](/documentation/swiftui/view/safeareapadding(_:)) Adds the provided insets into the safe area of this view.
- [safeAreaPadding(_:_:)](/documentation/swiftui/view/safeareapadding(_:_:)) Adds the provided insets into the safe area of this view.
- [contentMargins(_:for:)](/documentation/swiftui/view/contentmargins(_:for:)) Configures the content margin for a provided placement.
- [contentMargins(_:_:for:)](/documentation/swiftui/view/contentmargins(_:_:for:)) Configures the content margin for a provided placement.

## Layer order

- [zIndex(_:)](/documentation/swiftui/view/zindex(_:)) Controls the display order of overlapping views.

## Layout direction

- [layoutDirectionBehavior(_:)](/documentation/swiftui/view/layoutdirectionbehavior(_:)) Sets the behavior of this view for different layout directions.

## Custom layout characteristics

- [layoutValue(key:value:)](/documentation/swiftui/view/layoutvalue(key:value:)) Associates a value with a custom layout property.

## Drawing views

- [Style modifiers](/documentation/swiftui/view-style-modifiers)
- [Graphics and rendering modifiers](/documentation/swiftui/view-graphics-and-rendering)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
