---
title: stroke(_:lineWidth:antialiased:)
description: Traces the outline of this shape with a color or gradient.
source: https://developer.apple.com/documentation/swiftui/shape/stroke(_:linewidth:antialiased:)
timestamp: 2025-10-29T00:11:02.289Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# stroke(_:lineWidth:antialiased:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Traces the outline of this shape with a color or gradient.

```swift
nonisolated func stroke<S>(_ content: S, lineWidth: CGFloat = 1, antialiased: Bool = true) -> StrokeShapeView<Self, S, EmptyView> where S : ShapeStyle
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

## Setting the stroke characteristics

- [stroke(_:lineWidth:)](/documentation/swiftui/shape/stroke(_:linewidth:))
- [stroke(lineWidth:)](/documentation/swiftui/shape/stroke(linewidth:))
- [stroke(_:style:)](/documentation/swiftui/shape/stroke(_:style:))
- [stroke(_:style:antialiased:)](/documentation/swiftui/shape/stroke(_:style:antialiased:))
- [stroke(style:)](/documentation/swiftui/shape/stroke(style:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
