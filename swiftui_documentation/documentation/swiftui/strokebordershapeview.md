---
title: StrokeBorderShapeView
description: A shape provider that strokes the border of its shape.
source: https://developer.apple.com/documentation/swiftui/strokebordershapeview
timestamp: 2025-10-29T00:09:41.540Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# StrokeBorderShapeView

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A shape provider that strokes the border of its shape.

```swift
@frozen struct StrokeBorderShapeView<Content, Style, Background> where Content : InsettableShape, Style : ShapeStyle, Background : View
```

## Overview

You don’t create this type directly; it’s the return type of `Shape.strokeBorder`.

## Conforms To

- [ShapeView](/documentation/swiftui/shapeview)
- [View](/documentation/swiftui/view)

## Creating a stroke border shape view

- [init(shape:style:strokeStyle:isAntialiased:background:)](/documentation/swiftui/strokebordershapeview/init(shape:style:strokestyle:isantialiased:background:)) Create a stroke border shape.

## Getting shape view properties

- [background](/documentation/swiftui/strokebordershapeview/background) The background shown beneath this view.
- [isAntialiased](/documentation/swiftui/strokebordershapeview/isantialiased) Whether this shape should be drawn antialiased.
- [shape](/documentation/swiftui/strokebordershapeview/shape) The shape that this type draws and provides for other drawing operations.
- [strokeStyle](/documentation/swiftui/strokebordershapeview/strokestyle) The stroke style used when stroking this view’s shape.
- [style](/documentation/swiftui/strokebordershapeview/style) The style that strokes the border of this view’s shape.

## Defining shape behavior

- [ShapeView](/documentation/swiftui/shapeview)
- [Shape](/documentation/swiftui/shape)
- [AnyShape](/documentation/swiftui/anyshape)
- [ShapeRole](/documentation/swiftui/shaperole)
- [StrokeStyle](/documentation/swiftui/strokestyle)
- [StrokeShapeView](/documentation/swiftui/strokeshapeview)
- [FillStyle](/documentation/swiftui/fillstyle)
- [FillShapeView](/documentation/swiftui/fillshapeview)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
