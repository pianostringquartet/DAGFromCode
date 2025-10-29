---
title: StrokeShapeView
description: A shape provider that strokes its shape.
source: https://developer.apple.com/documentation/swiftui/strokeshapeview
timestamp: 2025-10-29T00:13:19.070Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# StrokeShapeView

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A shape provider that strokes its shape.

```swift
@frozen struct StrokeShapeView<Content, Style, Background> where Content : Shape, Style : ShapeStyle, Background : View
```

## Overview

You don’t create this type directly; it’s the return type of `Shape.stroke`.

## Conforms To

- [ShapeView](/documentation/swiftui/shapeview)
- [View](/documentation/swiftui/view)

## Creating a stroke shape view

- [init(shape:style:strokeStyle:isAntialiased:background:)](/documentation/swiftui/strokeshapeview/init(shape:style:strokestyle:isantialiased:background:)) Create a StrokeShapeView.

## Getting shape view properties

- [background](/documentation/swiftui/strokeshapeview/background) The background shown beneath this view.
- [isAntialiased](/documentation/swiftui/strokeshapeview/isantialiased) Whether this shape should be drawn antialiased.
- [shape](/documentation/swiftui/strokeshapeview/shape) The shape that this type draws and provides for other drawing operations.
- [strokeStyle](/documentation/swiftui/strokeshapeview/strokestyle) The stroke style used when stroking this view’s shape.
- [style](/documentation/swiftui/strokeshapeview/style) The style that strokes this view’s shape.

## Defining shape behavior

- [ShapeView](/documentation/swiftui/shapeview)
- [Shape](/documentation/swiftui/shape)
- [AnyShape](/documentation/swiftui/anyshape)
- [ShapeRole](/documentation/swiftui/shaperole)
- [StrokeStyle](/documentation/swiftui/strokestyle)
- [StrokeBorderShapeView](/documentation/swiftui/strokebordershapeview)
- [FillStyle](/documentation/swiftui/fillstyle)
- [FillShapeView](/documentation/swiftui/fillshapeview)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
