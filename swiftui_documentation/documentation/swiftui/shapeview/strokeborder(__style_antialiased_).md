---
title: strokeBorder(_:style:antialiased:)
description: Returns a view that’s the result of insetting this view by half of its style’s line width.
source: https://developer.apple.com/documentation/swiftui/shapeview/strokeborder(_:style:antialiased:)
timestamp: 2025-10-29T00:11:10.712Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapeview](/documentation/swiftui/shapeview)

**Instance Method**

# strokeBorder(_:style:antialiased:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns a view that’s the result of insetting this view by half of its style’s line width.

```swift
nonisolated func strokeBorder<S>(_ content: S = .foreground, style: StrokeStyle, antialiased: Bool = true) -> StrokeBorderShapeView<Self.Content, S, Self> where S : ShapeStyle
```

## Discussion

This method strokes the resulting shape with `style` and fills it with `content`.

## Modify the shape

- [fill(_:style:)](/documentation/swiftui/shapeview/fill(_:style:))
- [stroke(_:style:antialiased:)](/documentation/swiftui/shapeview/stroke(_:style:antialiased:))
- [stroke(_:lineWidth:antialiased:)](/documentation/swiftui/shapeview/stroke(_:linewidth:antialiased:))
- [strokeBorder(_:lineWidth:antialiased:)](/documentation/swiftui/shapeview/strokeborder(_:linewidth:antialiased:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
