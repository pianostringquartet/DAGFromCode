---
title: fill(_:style:)
description: Fills this shape with a color or gradient.
source: https://developer.apple.com/documentation/swiftui/shape/fill(_:style:)
timestamp: 2025-10-29T00:11:40.571Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# fill(_:style:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Fills this shape with a color or gradient.

```swift
nonisolated func fill<S>(_ content: S = .foreground, style: FillStyle = FillStyle()) -> _ShapeView<Self, S> where S : ShapeStyle
```

## Parameters

**content**

The color or gradient to use when filling this shape.



**style**

The style options that determine how the fill renders.



## Return Value

A shape filled with the color or gradient you supply.

## Filling a shape

- [fill(style:)](/documentation/swiftui/shape/fill(style:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
