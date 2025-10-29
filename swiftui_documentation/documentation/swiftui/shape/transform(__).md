---
title: transform(_:)
description: Applies an affine transform to this shape.
source: https://developer.apple.com/documentation/swiftui/shape/transform(_:)
timestamp: 2025-10-29T00:10:07.158Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# transform(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Applies an affine transform to this shape.

```swift
func transform(_ transform: CGAffineTransform) -> TransformedShape<Self>
```

## Parameters

**transform**

The affine transformation matrix to apply to this shape.



## Return Value

A transformed shape, based on its matrix values.

## Discussion

Affine transforms present a mathematical approach to applying combinations of rotation, scaling, translation, and skew to shapes.

## Transforming a shape

- [trim(from:to:)](/documentation/swiftui/shape/trim(from:to:))
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
