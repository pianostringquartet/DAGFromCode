---
title: stroke(_:lineWidth:)
description: Traces the outline of this shape with a color or gradient.
source: https://developer.apple.com/documentation/swiftui/shape/stroke(_:linewidth:)
timestamp: 2025-10-29T00:15:18.761Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# stroke(_:lineWidth:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Traces the outline of this shape with a color or gradient.

```swift
nonisolated func stroke<S>(_ content: S, lineWidth: CGFloat = 1) -> some View where S : ShapeStyle
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

- [stroke(_:lineWidth:antialiased:)](/documentation/swiftui/shape/stroke(_:linewidth:antialiased:))
- [stroke(lineWidth:)](/documentation/swiftui/shape/stroke(linewidth:))
- [stroke(_:style:)](/documentation/swiftui/shape/stroke(_:style:))
- [stroke(_:style:antialiased:)](/documentation/swiftui/shape/stroke(_:style:antialiased:))
- [stroke(style:)](/documentation/swiftui/shape/stroke(style:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
