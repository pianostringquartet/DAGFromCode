---
title: strokeBorder(_:lineWidth:antialiased:)
description: Returns a view that’s the result of filling an inner stroke of this view with the content you supply.
source: https://developer.apple.com/documentation/swiftui/shapeview/strokeborder(_:linewidth:antialiased:)
timestamp: 2025-10-29T00:11:54.855Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapeview](/documentation/swiftui/shapeview)

**Instance Method**

# strokeBorder(_:lineWidth:antialiased:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns a view that’s the result of filling an inner stroke of this view with the content you supply.

```swift
nonisolated func strokeBorder<S>(_ content: S = .foreground, lineWidth: CGFloat = 1, antialiased: Bool = true) -> StrokeBorderShapeView<Self.Content, S, Self> where S : ShapeStyle
```

## Discussion

This is equivalent to insetting `self` by `lineWidth / 2` and stroking the resulting shape with `lineWidth` as the line-width.

## Modify the shape

- [fill(_:style:)](/documentation/swiftui/shapeview/fill(_:style:))
- [stroke(_:style:antialiased:)](/documentation/swiftui/shapeview/stroke(_:style:antialiased:))
- [stroke(_:lineWidth:antialiased:)](/documentation/swiftui/shapeview/stroke(_:linewidth:antialiased:))
- [strokeBorder(_:style:antialiased:)](/documentation/swiftui/shapeview/strokeborder(_:style:antialiased:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
