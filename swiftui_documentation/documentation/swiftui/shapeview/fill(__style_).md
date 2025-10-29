---
title: fill(_:style:)
description: Fills this shape with a color or gradient.
source: https://developer.apple.com/documentation/swiftui/shapeview/fill(_:style:)
timestamp: 2025-10-29T00:09:38.954Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapeview](/documentation/swiftui/shapeview)

**Instance Method**

# fill(_:style:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Fills this shape with a color or gradient.

```swift
nonisolated func fill<S>(_ content: S = .foreground, style: FillStyle = FillStyle()) -> FillShapeView<Self.Content, S, Self> where S : ShapeStyle
```

## Parameters

**content**

The color or gradient to use when filling this shape.



**style**

The style options that determine how the fill renders.



## Return Value

A shape filled with the color or gradient you supply.

## Modify the shape

- [stroke(_:style:antialiased:)](/documentation/swiftui/shapeview/stroke(_:style:antialiased:))
- [stroke(_:lineWidth:antialiased:)](/documentation/swiftui/shapeview/stroke(_:linewidth:antialiased:))
- [strokeBorder(_:style:antialiased:)](/documentation/swiftui/shapeview/strokeborder(_:style:antialiased:))
- [strokeBorder(_:lineWidth:antialiased:)](/documentation/swiftui/shapeview/strokeborder(_:linewidth:antialiased:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
