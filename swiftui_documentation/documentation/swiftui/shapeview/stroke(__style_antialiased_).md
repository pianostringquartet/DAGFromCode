---
title: stroke(_:style:antialiased:)
description: Traces the outline of this shape with a color or gradient.
source: https://developer.apple.com/documentation/swiftui/shapeview/stroke(_:style:antialiased:)
timestamp: 2025-10-29T00:09:35.782Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapeview](/documentation/swiftui/shapeview)

**Instance Method**

# stroke(_:style:antialiased:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Traces the outline of this shape with a color or gradient.

```swift
nonisolated func stroke<S>(_ content: S, style: StrokeStyle, antialiased: Bool = true) -> StrokeShapeView<Self.Content, S, Self> where S : ShapeStyle
```

## Parameters

**content**

The color or gradient with which to stroke this shape.



**style**

The stroke characteristics — such as the line’s width and whether the stroke is dashed — that determine how to render this shape.



## Return Value

A stroked shape.

## Discussion

The following example adds a dashed purple stroke to a `Capsule`:

```swift
Capsule()
.stroke(
    Color.purple,
    style: StrokeStyle(
        lineWidth: 5,
        lineCap: .round,
        lineJoin: .miter,
        miterLimit: 0,
        dash: [5, 10],
        dashPhase: 0
    )
)
```

## Modify the shape

- [fill(_:style:)](/documentation/swiftui/shapeview/fill(_:style:))
- [stroke(_:lineWidth:antialiased:)](/documentation/swiftui/shapeview/stroke(_:linewidth:antialiased:))
- [strokeBorder(_:style:antialiased:)](/documentation/swiftui/shapeview/strokeborder(_:style:antialiased:))
- [strokeBorder(_:lineWidth:antialiased:)](/documentation/swiftui/shapeview/strokeborder(_:linewidth:antialiased:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
