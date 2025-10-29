---
title: FillShapeView
description: A shape provider that fills its shape.
source: https://developer.apple.com/documentation/swiftui/fillshapeview
timestamp: 2025-10-29T00:15:23.776Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FillShapeView

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A shape provider that fills its shape.

```swift
@frozen struct FillShapeView<Content, Style, Background> where Content : Shape, Style : ShapeStyle, Background : View
```

## Overview

You do not create this type directly, it is the return type of `Shape.fill`.

## Conforms To

- [ShapeView](/documentation/swiftui/shapeview)
- [View](/documentation/swiftui/view)

## Creating a stroke shape view

- [init(shape:style:fillStyle:background:)](/documentation/swiftui/fillshapeview/init(shape:style:fillstyle:background:)) Create a FillShapeView.

## Getting shape view properties

- [background](/documentation/swiftui/fillshapeview/background) The background shown beneath this view.
- [fillStyle](/documentation/swiftui/fillshapeview/fillstyle) The fill style used when filling this view’s shape.
- [shape](/documentation/swiftui/fillshapeview/shape) The shape that this type draws and provides for other drawing operations.
- [style](/documentation/swiftui/fillshapeview/style) The style that fills this view’s shape.

## Defining shape behavior

- [ShapeView](/documentation/swiftui/shapeview)
- [Shape](/documentation/swiftui/shape)
- [AnyShape](/documentation/swiftui/anyshape)
- [ShapeRole](/documentation/swiftui/shaperole)
- [StrokeStyle](/documentation/swiftui/strokestyle)
- [StrokeShapeView](/documentation/swiftui/strokeshapeview)
- [StrokeBorderShapeView](/documentation/swiftui/strokebordershapeview)
- [FillStyle](/documentation/swiftui/fillstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
