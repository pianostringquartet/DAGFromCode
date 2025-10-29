---
title: stroke(_:lineWidth:antialiased:)
description: Traces the outline of this shape with a color or gradient.
source: https://developer.apple.com/documentation/swiftui/shapeview/stroke(_:linewidth:antialiased:)
timestamp: 2025-10-29T00:15:03.713Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapeview](/documentation/swiftui/shapeview)

**Instance Method**

# stroke(_:lineWidth:antialiased:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Traces the outline of this shape with a color or gradient.

```swift
nonisolated func stroke<S>(_ content: S, lineWidth: CGFloat = 1, antialiased: Bool = true) -> StrokeShapeView<Self.Content, S, Self> where S : ShapeStyle
```

## Parameters

**content**

The color or gradient with which to stroke this shape.



**lineWidth**

The width of the stroke that outlines this shape.



## Return Value

A stroked shape.

## Discussion

The following example draws a circle with a purple stroke:

```swift
Circle().stroke(Color.purple, lineWidth: 5)
```

## Modify the shape

- [fill(_:style:)](/documentation/swiftui/shapeview/fill(_:style:))
- [stroke(_:style:antialiased:)](/documentation/swiftui/shapeview/stroke(_:style:antialiased:))
- [strokeBorder(_:style:antialiased:)](/documentation/swiftui/shapeview/strokeborder(_:style:antialiased:))
- [strokeBorder(_:lineWidth:antialiased:)](/documentation/swiftui/shapeview/strokeborder(_:linewidth:antialiased:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
