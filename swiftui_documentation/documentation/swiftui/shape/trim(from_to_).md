---
title: trim(from:to:)
description: Trims this shape by a fractional amount based on its representation as a path.
source: https://developer.apple.com/documentation/swiftui/shape/trim(from:to:)
timestamp: 2025-10-29T00:12:18.565Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# trim(from:to:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Trims this shape by a fractional amount based on its representation as a path.

```swift
nonisolated func trim(from startFraction: CGFloat = 0, to endFraction: CGFloat = 1) -> some Shape
```

## Parameters

**startFraction**

The fraction of the way through drawing this shape where drawing starts.



**endFraction**

The fraction of the way through drawing this shape where drawing ends.



## Return Value

A shape built by capturing a portion of this shape’s path.

## Discussion

To create a `Shape` instance, you define the shape’s path using lines and curves. Use the `trim(from:to:)` method to draw a portion of a shape by ignoring portions of the beginning and ending of the shape’s path.

For example, if you’re drawing a figure eight or infinity symbol (∞) starting from its center, setting the `startFraction` and `endFraction` to different values determines the parts of the overall shape.

The following example shows a simplified infinity symbol that draws only three quarters of the full shape. That is, of the two lobes of the symbol, one lobe is complete and the other is half complete.

```swift
Path { path in
    path.addLines([
        .init(x: 2, y: 1),
        .init(x: 1, y: 0),
        .init(x: 0, y: 1),
        .init(x: 1, y: 2),
        .init(x: 3, y: 0),
        .init(x: 4, y: 1),
        .init(x: 3, y: 2),
        .init(x: 2, y: 1)
    ])
}
.trim(from: 0.25, to: 1.0)
.scale(50, anchor: .topLeading)
.stroke(Color.black, lineWidth: 3)
```

Changing the parameters of `trim(from:to:)` to `.trim(from: 0, to: 1)` draws the full infinity symbol, while `.trim(from: 0, to: 0.5)` draws only the left lobe of the symbol.

## Transforming a shape

- [transform(_:)](/documentation/swiftui/shape/transform(_:))
- [size(_:)](/documentation/swiftui/shape/size(_:))
- [size(width:height:)](/documentation/swiftui/shape/size(width:height:))
- [scale(_:anchor:)](/documentation/swiftui/shape/scale(_:anchor:))
- [scale(x:y:anchor:)](/documentation/swiftui/shape/scale(x:y:anchor:))
- [rotation(_:anchor:)](/documentation/swiftui/shape/rotation(_:anchor:))
- [offset(_:)](/documentation/swiftui/shape/offset(_:))
- [offset(x:y:)](/documentation/swiftui/shape/offset(x:y:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
