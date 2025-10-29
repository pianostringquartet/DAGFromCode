---
title: Shapes
description: Trace and fill built-in and custom shapes with a color, gradient, or other pattern.
source: https://developer.apple.com/documentation/swiftui/shapes
timestamp: 2025-10-29T00:12:42.016Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Shapes

> Trace and fill built-in and custom shapes with a color, gradient, or other pattern.

## Overview

Draw shapes like circles and rectangles, as well as custom paths that define shapes of your own design. Apply styles that include environment-aware colors, rich gradients, and material effects to the foreground, background, and outline of your shapes.



If you need the efficiency or flexibility of immediate mode drawing — for example, to create particle effects — use a [Canvas](/documentation/swiftui/canvas) view instead.

## Creating rectangular shapes

- [Rectangle](/documentation/swiftui/rectangle) A rectangular shape aligned inside the frame of the view containing it.
- [RoundedRectangle](/documentation/swiftui/roundedrectangle) A rectangular shape with rounded corners, aligned inside the frame of the view containing it.
- [RoundedCornerStyle](/documentation/swiftui/roundedcornerstyle) Defines the shape of a rounded rectangle’s corners.
- [RoundedRectangularShape](/documentation/swiftui/roundedrectangularshape) A protocol of  that describes a rounded rectangular shape.
- [RoundedRectangularShapeCorners](/documentation/swiftui/roundedrectangularshapecorners) A type describing the corner styles of a .
- [UnevenRoundedRectangle](/documentation/swiftui/unevenroundedrectangle) A rectangular shape with rounded corners with different values, aligned inside the frame of the view containing it.
- [RectangleCornerRadii](/documentation/swiftui/rectanglecornerradii) Describes the corner radius values of a rounded rectangle with uneven corners.
- [RectangleCornerInsets](/documentation/swiftui/rectanglecornerinsets) The inset sizes for the corners of a rectangle.
- [ConcentricRectangle](/documentation/swiftui/concentricrectangle) A shape that is replaced by a concentric version of the current container shape. If the container shape is a rectangle derived shape with four corners, this shape could choose to respect corners individually.

## Creating circular shapes

- [Circle](/documentation/swiftui/circle) A circle centered on the frame of the view containing it.
- [Ellipse](/documentation/swiftui/ellipse) An ellipse aligned inside the frame of the view containing it.
- [Capsule](/documentation/swiftui/capsule) A capsule shape aligned inside the frame of the view containing it.

## Drawing custom shapes

- [Path](/documentation/swiftui/path) The outline of a 2D shape.

## Defining shape behavior

- [ShapeView](/documentation/swiftui/shapeview) A view that provides a shape that you can use for drawing operations.
- [Shape](/documentation/swiftui/shape) A 2D shape that you can use when drawing a view.
- [AnyShape](/documentation/swiftui/anyshape) A type-erased shape value.
- [ShapeRole](/documentation/swiftui/shaperole) Ways of styling a shape.
- [StrokeStyle](/documentation/swiftui/strokestyle) The characteristics of a stroke that traces a path.
- [StrokeShapeView](/documentation/swiftui/strokeshapeview) A shape provider that strokes its shape.
- [StrokeBorderShapeView](/documentation/swiftui/strokebordershapeview) A shape provider that strokes the border of its shape.
- [FillStyle](/documentation/swiftui/fillstyle) A style for rasterizing vector shapes.
- [FillShapeView](/documentation/swiftui/fillshapeview) A shape provider that fills its shape.

## Transforming a shape

- [ScaledShape](/documentation/swiftui/scaledshape) A shape with a scale transform applied to it.
- [RotatedShape](/documentation/swiftui/rotatedshape) A shape with a rotation transform applied to it.
- [OffsetShape](/documentation/swiftui/offsetshape) A shape with a translation offset transform applied to it.
- [TransformedShape](/documentation/swiftui/transformedshape) A shape with an affine transform applied to it.

## Setting a container shape

- [containerShape(_:)](/documentation/swiftui/view/containershape(_:)) Sets the container shape to use for any container relative shape or concentric rectangle within this view.
- [InsettableShape](/documentation/swiftui/insettableshape) A shape type that is able to inset itself to produce another shape.
- [ContainerRelativeShape](/documentation/swiftui/containerrelativeshape) A shape that is replaced by an inset version of the current container shape. If no container shape was defined, is replaced by a rectangle.

## Views

- [View fundamentals](/documentation/swiftui/view-fundamentals)
- [View configuration](/documentation/swiftui/view-configuration)
- [View styles](/documentation/swiftui/view-styles)
- [Animations](/documentation/swiftui/animations)
- [Text input and output](/documentation/swiftui/text-input-and-output)
- [Images](/documentation/swiftui/images)
- [Controls and indicators](/documentation/swiftui/controls-and-indicators)
- [Menus and commands](/documentation/swiftui/menus-and-commands)
- [Drawing and graphics](/documentation/swiftui/drawing-and-graphics)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
