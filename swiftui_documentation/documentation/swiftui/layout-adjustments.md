---
title: Layout adjustments
description: Make fine adjustments to alignment, spacing, padding, and other layout parameters.
source: https://developer.apple.com/documentation/swiftui/layout-adjustments
timestamp: 2025-10-29T00:11:53.708Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Layout adjustments

> Make fine adjustments to alignment, spacing, padding, and other layout parameters.

## Overview

Layout containers like stacks and grids provide a great starting point for arranging views in your app’s user interface. When you need to make fine adjustments, use layout view modifiers. You can adjust or constrain the size, position, and alignment of a view. You can also add padding around a view, and indicate how the view interacts with system-defined safe areas.



To get started with a basic layout, see [Layout](/documentation/swiftui/layout-fundamentals). For design guidance, see [layout](/design/Human-Interface-Guidelines/layout) in the Human Interface Guidelines.

## Finetuning a layout

- [Laying out a simple view](/documentation/swiftui/laying-out-a-simple-view) Create a view layout by adjusting the size of views.
- [Inspecting view layout](/documentation/swiftui/inspecting-view-layout) Determine the position and extent of a view using Xcode previews or by adding temporary borders.

## Adding padding around a view

- [padding(_:)](/documentation/swiftui/view/padding(_:)) Adds a different padding amount to each edge of this view.
- [padding(_:_:)](/documentation/swiftui/view/padding(_:_:)) Adds an equal padding amount to specific edges of this view.
- [padding3D(_:)](/documentation/swiftui/view/padding3d(_:)) Pads this view using the edge insets you specify.
- [padding3D(_:_:)](/documentation/swiftui/view/padding3d(_:_:)) Pads this view using the edge insets you specify.
- [scenePadding(_:)](/documentation/swiftui/view/scenepadding(_:)) Adds padding to the specified edges of this view using an amount that’s appropriate for the current scene.
- [scenePadding(_:edges:)](/documentation/swiftui/view/scenepadding(_:edges:)) Adds a specified kind of padding to the specified edges of this view using an amount that’s appropriate for the current scene.
- [ScenePadding](/documentation/swiftui/scenepadding) The padding used to space a view from its containing scene.

## Influencing a view’s size

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

## Adjusting a view’s position

- [Making fine adjustments to a view’s position](/documentation/swiftui/making-fine-adjustments-to-a-view-s-position) Shift the position of a view by applying the offset or position modifier.
- [position(_:)](/documentation/swiftui/view/position(_:)) Positions the center of this view at the specified point in its parent’s coordinate space.
- [position(x:y:)](/documentation/swiftui/view/position(x:y:)) Positions the center of this view at the specified coordinates in its parent’s coordinate space.
- [offset(_:)](/documentation/swiftui/view/offset(_:)) Offset this view by the horizontal and vertical amount specified in the offset parameter.
- [offset(x:y:)](/documentation/swiftui/view/offset(x:y:)) Offset this view by the specified horizontal and vertical distances.
- [offset(z:)](/documentation/swiftui/view/offset(z:)) Brings a view forward in Z by the provided distance in points.

## Aligning views

- [Aligning views within a stack](/documentation/swiftui/aligning-views-within-a-stack) Position views inside a stack using alignment guides.
- [Aligning views across stacks](/documentation/swiftui/aligning-views-across-stacks) Create a custom alignment and use it to align views across multiple stacks.
- [alignmentGuide(_:computeValue:)](/documentation/swiftui/view/alignmentguide(_:computevalue:)) Sets the view’s horizontal alignment.
- [Alignment](/documentation/swiftui/alignment) An alignment in both axes.
- [HorizontalAlignment](/documentation/swiftui/horizontalalignment) An alignment position along the horizontal axis.
- [VerticalAlignment](/documentation/swiftui/verticalalignment) An alignment position along the vertical axis.
- [DepthAlignment](/documentation/swiftui/depthalignment) An alignment position along the depth axis.
- [AlignmentID](/documentation/swiftui/alignmentid) A type that you use to create custom alignment guides.
- [ViewDimensions](/documentation/swiftui/viewdimensions) A view’s size and alignment guides in its own coordinate space.
- [ViewDimensions3D](/documentation/swiftui/viewdimensions3d) A view’s 3D size and alignment guides in its own coordinate space.
- [SpatialContainer](/documentation/swiftui/spatialcontainer) A layout container that aligns overlapping content in 3D space.

## Setting margins

- [contentMargins(_:for:)](/documentation/swiftui/view/contentmargins(_:for:)) Configures the content margin for a provided placement.
- [contentMargins(_:_:for:)](/documentation/swiftui/view/contentmargins(_:_:for:)) Configures the content margin for a provided placement.
- [ContentMarginPlacement](/documentation/swiftui/contentmarginplacement) The placement of margins.

## Staying in the safe areas

- [ignoresSafeArea(_:edges:)](/documentation/swiftui/view/ignoressafearea(_:edges:)) Expands the safe area of a view.
- [safeAreaInset(edge:alignment:spacing:content:)](/documentation/swiftui/view/safeareainset(edge:alignment:spacing:content:)) Shows the specified content beside the modified view.
- [safeAreaPadding(_:)](/documentation/swiftui/view/safeareapadding(_:)) Adds the provided insets into the safe area of this view.
- [safeAreaPadding(_:_:)](/documentation/swiftui/view/safeareapadding(_:_:)) Adds the provided insets into the safe area of this view.
- [SafeAreaRegions](/documentation/swiftui/safearearegions) A set of symbolic safe area regions.

## Setting a layout direction

- [layoutDirectionBehavior(_:)](/documentation/swiftui/view/layoutdirectionbehavior(_:)) Sets the behavior of this view for different layout directions.
- [LayoutDirectionBehavior](/documentation/swiftui/layoutdirectionbehavior) A description of what should happen when the layout direction changes.
- [layoutDirection](/documentation/swiftui/environmentvalues/layoutdirection) The layout direction associated with the current environment.
- [LayoutDirection](/documentation/swiftui/layoutdirection) A direction in which SwiftUI can lay out content.
- [LayoutRotationUnaryLayout](/documentation/swiftui/layoutrotationunarylayout)

## Reacting to interface characteristics

- [isLuminanceReduced](/documentation/swiftui/environmentvalues/isluminancereduced) A Boolean value that indicates whether the display or environment currently requires reduced luminance.
- [displayScale](/documentation/swiftui/environmentvalues/displayscale) The display scale of this environment.
- [pixelLength](/documentation/swiftui/environmentvalues/pixellength) The size of a pixel on the screen.
- [horizontalSizeClass](/documentation/swiftui/environmentvalues/horizontalsizeclass) The horizontal size class of this environment.
- [verticalSizeClass](/documentation/swiftui/environmentvalues/verticalsizeclass) The vertical size class of this environment.
- [UserInterfaceSizeClass](/documentation/swiftui/userinterfacesizeclass) A set of values that indicate the visual size available to the view.

## Accessing edges, regions, and layouts

- [Edge](/documentation/swiftui/edge) An enumeration to indicate one edge of a rectangle.
- [Edge3D](/documentation/swiftui/edge3d) An edge or face of a 3D volume.
- [HorizontalEdge](/documentation/swiftui/horizontaledge) An edge on the horizontal axis.
- [VerticalEdge](/documentation/swiftui/verticaledge) An edge on the vertical axis.
- [EdgeInsets](/documentation/swiftui/edgeinsets) The inset distances for the sides of a rectangle.
- [EdgeInsets3D](/documentation/swiftui/edgeinsets3d) The inset distances for the faces of a 3D volume.

## View layout

- [Layout fundamentals](/documentation/swiftui/layout-fundamentals)
- [Custom layout](/documentation/swiftui/custom-layout)
- [Lists](/documentation/swiftui/lists)
- [Tables](/documentation/swiftui/tables)
- [View groupings](/documentation/swiftui/view-groupings)
- [Scroll views](/documentation/swiftui/scroll-views)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
