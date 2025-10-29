---
title: Shape
description: A 2D shape that you can use when drawing a view.
source: https://developer.apple.com/documentation/swiftui/shape
timestamp: 2025-10-29T00:11:56.797Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# Shape

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A 2D shape that you can use when drawing a view.

```swift
protocol Shape : Sendable, Animatable, View, _RemoveGlobalActorIsolation
```

## Overview

Shapes without an explicit fill or stroke get a default fill based on the foreground color.

You can define shapes in relation to an implicit frame of reference, such as the natural size of the view that contains it. Alternatively, you can define shapes in terms of absolute coordinates.

## Inherits From

- [Animatable](/documentation/swiftui/animatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [View](/documentation/swiftui/view)

## Inherited By

- [InsettableShape](/documentation/swiftui/insettableshape)
- [RoundedRectangularShape](/documentation/swiftui/roundedrectangularshape)

## Conforming Types

- [AnyShape](/documentation/swiftui/anyshape)
- [ButtonBorderShape](/documentation/swiftui/buttonbordershape)
- [Capsule](/documentation/swiftui/capsule)
- [Circle](/documentation/swiftui/circle)
- [ConcentricRectangle](/documentation/swiftui/concentricrectangle)
- [ContainerRelativeShape](/documentation/swiftui/containerrelativeshape)
- [DefaultGlassEffectShape](/documentation/swiftui/defaultglasseffectshape)
- [Ellipse](/documentation/swiftui/ellipse)
- [OffsetShape](/documentation/swiftui/offsetshape)
- [Path](/documentation/swiftui/path)
- [Rectangle](/documentation/swiftui/rectangle)
- [RotatedShape](/documentation/swiftui/rotatedshape)
- [RoundedRectangle](/documentation/swiftui/roundedrectangle)
- [ScaledShape](/documentation/swiftui/scaledshape)
- [TransformedShape](/documentation/swiftui/transformedshape)
- [UnevenRoundedRectangle](/documentation/swiftui/unevenroundedrectangle)

## Getting standard shapes

- [buttonBorder](/documentation/swiftui/shape/buttonborder) A shape that defers to the environment to determine the resolved button border shape.
- [capsule](/documentation/swiftui/shape/capsule) A capsule shape aligned inside the frame of the view containing it.
- [capsule(style:)](/documentation/swiftui/shape/capsule(style:)) A capsule shape aligned inside the frame of the view containing it.
- [circle](/documentation/swiftui/shape/circle) A circle centered on the frame of the view containing it.
- [containerRelative](/documentation/swiftui/shape/containerrelative) A shape that is replaced by an inset version of the current container shape. If no container shape was defined, is replaced by a rectangle.
- [ellipse](/documentation/swiftui/shape/ellipse) An ellipse aligned inside the frame of the view containing it.
- [rect](/documentation/swiftui/shape/rect) A rectangular shape aligned inside the frame of the view containing it.
- [rect(cornerRadii:style:)](/documentation/swiftui/shape/rect(cornerradii:style:)) A rectangular shape with rounded corners with different values, aligned inside the frame of the view containing it.
- [rect(cornerRadius:style:)](/documentation/swiftui/shape/rect(cornerradius:style:)) A rectangular shape with rounded corners, aligned inside the frame of the view containing it.
- [rect(cornerSize:style:)](/documentation/swiftui/shape/rect(cornersize:style:)) A rectangular shape with rounded corners, aligned inside the frame of the view containing it.
- [rect(topLeadingRadius:bottomLeadingRadius:bottomTrailingRadius:topTrailingRadius:style:)](/documentation/swiftui/shape/rect(topleadingradius:bottomleadingradius:bottomtrailingradius:toptrailingradius:style:)) A rectangular shape with rounded corners with different values, aligned inside the frame of the view containing it.

## Defining a shape’s size and path

- [sizeThatFits(_:)](/documentation/swiftui/shape/sizethatfits(_:)) Returns the size of the view that will render the shape, given a proposed size.
- [path(in:)](/documentation/swiftui/shape/path(in:)) Describes this shape as a path within a rectangular frame of reference.

## Transforming a shape

- [trim(from:to:)](/documentation/swiftui/shape/trim(from:to:)) Trims this shape by a fractional amount based on its representation as a path.
- [transform(_:)](/documentation/swiftui/shape/transform(_:)) Applies an affine transform to this shape.
- [size(_:)](/documentation/swiftui/shape/size(_:)) Returns a new version of self representing the same shape, but that will ask it to create its path from a rect of . This does not affect the layout properties of any views created from the shape (e.g. by filling it).
- [size(width:height:)](/documentation/swiftui/shape/size(width:height:)) Returns a new version of self representing the same shape, but that will ask it to create its path from a rect of size . This does not affect the layout properties of any views created from the shape (e.g. by filling it).
- [scale(_:anchor:)](/documentation/swiftui/shape/scale(_:anchor:)) Scales this shape without changing its bounding frame.
- [scale(x:y:anchor:)](/documentation/swiftui/shape/scale(x:y:anchor:)) Scales this shape without changing its bounding frame.
- [rotation(_:anchor:)](/documentation/swiftui/shape/rotation(_:anchor:)) Rotates this shape around an anchor point at the angle you specify.
- [offset(_:)](/documentation/swiftui/shape/offset(_:)) Changes the relative position of this shape using the specified point.
- [offset(x:y:)](/documentation/swiftui/shape/offset(x:y:)) Changes the relative position of this shape using the specified point.

## Setting the stroke characteristics

- [stroke(_:lineWidth:)](/documentation/swiftui/shape/stroke(_:linewidth:)) Traces the outline of this shape with a color or gradient.
- [stroke(_:lineWidth:antialiased:)](/documentation/swiftui/shape/stroke(_:linewidth:antialiased:)) Traces the outline of this shape with a color or gradient.
- [stroke(lineWidth:)](/documentation/swiftui/shape/stroke(linewidth:)) Returns a new shape that is a stroked copy of  with line-width defined by  and all other properties of  having their default values.
- [stroke(_:style:)](/documentation/swiftui/shape/stroke(_:style:)) Traces the outline of this shape with a color or gradient.
- [stroke(_:style:antialiased:)](/documentation/swiftui/shape/stroke(_:style:antialiased:)) Traces the outline of this shape with a color or gradient.
- [stroke(style:)](/documentation/swiftui/shape/stroke(style:)) Returns a new shape that is a stroked copy of , using the contents of  to define the stroke characteristics.

## Filling a shape

- [fill(_:style:)](/documentation/swiftui/shape/fill(_:style:)) Fills this shape with a color or gradient.
- [fill(style:)](/documentation/swiftui/shape/fill(style:)) Fills this shape with the foreground color.

## Setting the role

- [role](/documentation/swiftui/shape/role) An indication of how to style a shape.

## Indicating a layout direction

- [layoutDirectionBehavior](/documentation/swiftui/shape/layoutdirectionbehavior) Returns the behavior this shape should use for different layout directions.

## Performing operations on a shape

- [intersection(_:eoFill:)](/documentation/swiftui/shape/intersection(_:eofill:)) Returns a new shape with filled regions common to both shapes.
- [lineIntersection(_:eoFill:)](/documentation/swiftui/shape/lineintersection(_:eofill:)) Returns a new shape with a line from this shape that overlaps the filled regions of the given shape.
- [lineSubtraction(_:eoFill:)](/documentation/swiftui/shape/linesubtraction(_:eofill:)) Returns a new shape with a line from this shape that does not overlap the filled region of the given shape.
- [subtracting(_:eoFill:)](/documentation/swiftui/shape/subtracting(_:eofill:)) Returns a new shape with filled regions from this shape that are not in the given shape.
- [symmetricDifference(_:eoFill:)](/documentation/swiftui/shape/symmetricdifference(_:eofill:)) Returns a new shape with filled regions either from this shape or the given shape, but not in both.
- [union(_:eoFill:)](/documentation/swiftui/shape/union(_:eofill:)) Returns a new shape with filled regions in either this shape or the given shape.

## Instance Methods

- [size(_:anchor:)](/documentation/swiftui/shape/size(_:anchor:)) Returns a new version of self representing the same shape, but within a rect of  instead of the container size.
- [size(width:height:anchor:)](/documentation/swiftui/shape/size(width:height:anchor:)) Returns a new version of self representing the same shape, but within a rect of  instead of the container size.

## Type Methods

- [rect(corners:isUniform:)](/documentation/swiftui/shape/rect(corners:isuniform:)) A rectangle shape that is aligned inside the frame of the view containing it. The same corner style will be set on four corners to be square, rounded, or concentric to the container shape.
- [rect(topLeadingCorner:topTrailingCorner:bottomLeadingCorner:bottomTrailingCorner:)](/documentation/swiftui/shape/rect(topleadingcorner:toptrailingcorner:bottomleadingcorner:bottomtrailingcorner:)) A rectangle shape that is aligned inside the frame of the view containing it. Each of the corners can be customized in style to be square, rounded, or concentric to the container shape.
- [rect(uniformBottomCorners:topLeadingCorner:topTrailingCorner:)](/documentation/swiftui/shape/rect(uniformbottomcorners:topleadingcorner:toptrailingcorner:)) A rectangle shape that is aligned inside the frame of the view containing it. A corner style will be uniformly applied to the bottom two corners, while the top two corners will each has an indivdual corner style.
- [rect(uniformLeadingCorners:topTrailingCorner:bottomTrailingCorner:)](/documentation/swiftui/shape/rect(uniformleadingcorners:toptrailingcorner:bottomtrailingcorner:)) A rectangle shape that is aligned inside the frame of the view containing it. A corner style will be uniformly applied to the leading two corners, while the trailing two corners will each has an indivdual corner style.
- [rect(uniformLeadingCorners:uniformTrailingCorners:)](/documentation/swiftui/shape/rect(uniformleadingcorners:uniformtrailingcorners:)) A rectangle shape that is aligned inside the frame of the view containing it. A corner style will be uniformly applied to the leading two corners, while another corner style will be uniformly applied to the trailing two.
- [rect(uniformTopCorners:bottomLeadingCorner:bottomTrailingCorner:)](/documentation/swiftui/shape/rect(uniformtopcorners:bottomleadingcorner:bottomtrailingcorner:)) A rectangle shape that is aligned inside the frame of the view containing it. A corner style will be uniformly applied to the top two corners, while the bottom two corners will each has an indivdual corner style.
- [rect(uniformTopCorners:uniformBottomCorners:)](/documentation/swiftui/shape/rect(uniformtopcorners:uniformbottomcorners:)) A rectangle shape that is aligned inside the frame of the view containing it. A corner style will be uniformly applied to the top two corners, while another corner style will be uniformly applied to the bottom two.
- [rect(uniformTrailingCorners:topLeadingCorner:bottomLeadingCorner:)](/documentation/swiftui/shape/rect(uniformtrailingcorners:topleadingcorner:bottomleadingcorner:)) A rectangle shape that is aligned inside the frame of the view containing it. A corner style will be uniformly applied to the trailing two corners, while the leading two corners will each has an indivdual corner style.

## Defining shape behavior

- [ShapeView](/documentation/swiftui/shapeview)
- [AnyShape](/documentation/swiftui/anyshape)
- [ShapeRole](/documentation/swiftui/shaperole)
- [StrokeStyle](/documentation/swiftui/strokestyle)
- [StrokeShapeView](/documentation/swiftui/strokeshapeview)
- [StrokeBorderShapeView](/documentation/swiftui/strokebordershapeview)
- [FillStyle](/documentation/swiftui/fillstyle)
- [FillShapeView](/documentation/swiftui/fillshapeview)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
