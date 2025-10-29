---
title: stroke(_:style:antialiased:)
description: Traces the outline of this shape with a color or gradient.
source: https://developer.apple.com/documentation/swiftui/shape/stroke(_:style:antialiased:)
timestamp: 2025-10-29T00:14:02.874Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# stroke(_:style:antialiased:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Traces the outline of this shape with a color or gradient.

```swift
nonisolated func stroke<S>(_ content: S, style: StrokeStyle, antialiased: Bool = true) -> StrokeShapeView<Self, S, EmptyView> where S : ShapeStyle
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

## Setting the stroke characteristics

- [stroke(_:lineWidth:)](/documentation/swiftui/shape/stroke(_:linewidth:))
- [stroke(_:lineWidth:antialiased:)](/documentation/swiftui/shape/stroke(_:linewidth:antialiased:))
- [stroke(lineWidth:)](/documentation/swiftui/shape/stroke(linewidth:))
- [stroke(_:style:)](/documentation/swiftui/shape/stroke(_:style:))
- [stroke(style:)](/documentation/swiftui/shape/stroke(style:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
