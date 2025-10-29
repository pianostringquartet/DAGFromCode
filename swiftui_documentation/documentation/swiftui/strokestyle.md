---
title: StrokeStyle
description: The characteristics of a stroke that traces a path.
source: https://developer.apple.com/documentation/swiftui/strokestyle
timestamp: 2025-10-29T00:14:27.054Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# StrokeStyle

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The characteristics of a stroke that traces a path.

```swift
@frozen struct StrokeStyle
```

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a stroke style

- [init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)](/documentation/swiftui/strokestyle/init(linewidth:linecap:linejoin:miterlimit:dash:dashphase:)) Creates a new stroke style from the given components.

## Setting stroke style properties

- [lineWidth](/documentation/swiftui/strokestyle/linewidth) The width of the stroked path.
- [lineCap](/documentation/swiftui/strokestyle/linecap) The endpoint style of a line.
- [lineJoin](/documentation/swiftui/strokestyle/linejoin) The join type of a line.
- [miterLimit](/documentation/swiftui/strokestyle/miterlimit) A threshold used to determine whether to use a bevel instead of a miter at a join.
- [dash](/documentation/swiftui/strokestyle/dash) The lengths of painted and unpainted segments used to make a dashed line.
- [dashPhase](/documentation/swiftui/strokestyle/dashphase) How far into the dash pattern the line starts.

## Defining shape behavior

- [ShapeView](/documentation/swiftui/shapeview)
- [Shape](/documentation/swiftui/shape)
- [AnyShape](/documentation/swiftui/anyshape)
- [ShapeRole](/documentation/swiftui/shaperole)
- [StrokeShapeView](/documentation/swiftui/strokeshapeview)
- [StrokeBorderShapeView](/documentation/swiftui/strokebordershapeview)
- [FillStyle](/documentation/swiftui/fillstyle)
- [FillShapeView](/documentation/swiftui/fillshapeview)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
