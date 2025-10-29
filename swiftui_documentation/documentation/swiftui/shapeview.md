---
title: ShapeView
description: A view that provides a shape that you can use for drawing operations.
source: https://developer.apple.com/documentation/swiftui/shapeview
timestamp: 2025-10-29T00:10:06.201Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ShapeView

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A view that provides a shape that you can use for drawing operations.

```swift
protocol ShapeView<Content> : View, _RemoveGlobalActorIsolation
```

## Overview

Use this type with the drawing methods on [Shape](/documentation/swiftui/shape) to apply multiple fills and/or strokes to a shape. For example, the following code applies a fill and stroke to a capsule shape:

```swift
Capsule()
    .fill(.yellow)
    .stroke(.blue, lineWidth: 8)
```

## Inherits From

- [View](/documentation/swiftui/view)

## Conforming Types

- [FillShapeView](/documentation/swiftui/fillshapeview)
- [StrokeBorderShapeView](/documentation/swiftui/strokebordershapeview)
- [StrokeShapeView](/documentation/swiftui/strokeshapeview)

## Getting the shape

- [shape](/documentation/swiftui/shapeview/shape) The shape that this type draws and provides for other drawing operations.
- [Content](/documentation/swiftui/shapeview/content) The type of shape this can provide.

## Modify the shape

- [fill(_:style:)](/documentation/swiftui/shapeview/fill(_:style:)) Fills this shape with a color or gradient.
- [stroke(_:style:antialiased:)](/documentation/swiftui/shapeview/stroke(_:style:antialiased:)) Traces the outline of this shape with a color or gradient.
- [stroke(_:lineWidth:antialiased:)](/documentation/swiftui/shapeview/stroke(_:linewidth:antialiased:)) Traces the outline of this shape with a color or gradient.
- [strokeBorder(_:style:antialiased:)](/documentation/swiftui/shapeview/strokeborder(_:style:antialiased:)) Returns a view that’s the result of insetting this view by half of its style’s line width.
- [strokeBorder(_:lineWidth:antialiased:)](/documentation/swiftui/shapeview/strokeborder(_:linewidth:antialiased:)) Returns a view that’s the result of filling an inner stroke of this view with the content you supply.

## Defining shape behavior

- [Shape](/documentation/swiftui/shape)
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
