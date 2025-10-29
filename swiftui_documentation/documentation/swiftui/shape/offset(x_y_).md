---
title: offset(x:y:)
description: Changes the relative position of this shape using the specified point.
source: https://developer.apple.com/documentation/swiftui/shape/offset(x:y:)
timestamp: 2025-10-29T00:11:42.244Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# offset(x:y:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Changes the relative position of this shape using the specified point.

```swift
func offset(x: CGFloat = 0, y: CGFloat = 0) -> OffsetShape<Self>
```

## Parameters

**x**

The horizontal amount, in points, by which you offset the shape. Negative numbers are to the left and positive numbers are to the right.



**y**

The vertical amount, in points, by which you offset the shape. Negative numbers are up and positive numbers are down.



## Return Value

A shape offset by the specified amount.

## Discussion

The following example renders two circles. It places one circle at its default position. The second circle is outlined with a stroke, positioned on top of the first circle and offset by 100 points to the left and 50 points below.

```swift
Circle()
.overlay(
    Circle()
    .offset(x: -100, y: 50)
    .stroke()
)
```

## Transforming a shape

- [trim(from:to:)](/documentation/swiftui/shape/trim(from:to:))
- [transform(_:)](/documentation/swiftui/shape/transform(_:))
- [size(_:)](/documentation/swiftui/shape/size(_:))
- [size(width:height:)](/documentation/swiftui/shape/size(width:height:))
- [scale(_:anchor:)](/documentation/swiftui/shape/scale(_:anchor:))
- [scale(x:y:anchor:)](/documentation/swiftui/shape/scale(x:y:anchor:))
- [rotation(_:anchor:)](/documentation/swiftui/shape/rotation(_:anchor:))
- [offset(_:)](/documentation/swiftui/shape/offset(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
