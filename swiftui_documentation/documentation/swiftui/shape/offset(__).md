---
title: offset(_:)
description: Changes the relative position of this shape using the specified point.
source: https://developer.apple.com/documentation/swiftui/shape/offset(_:)
timestamp: 2025-10-29T00:11:26.224Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# offset(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Changes the relative position of this shape using the specified point.

```swift
func offset(_ offset: CGPoint) -> OffsetShape<Self>
```

## Parameters

**offset**

The amount, in points, by which you offset the shape. Negative numbers are to the left and up; positive numbers are to the right and down.



## Return Value

A shape offset by the specified amount.

## Discussion

The following example renders two circles. It places one circle at its default position. The second circle is outlined with a stroke, positioned on top of the first circle and offset by 100 points to the left and 50 points below.

```swift
Circle()
.overlay(
    Circle()
    .offset(CGPoint(x: -100, y: 50))
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
- [offset(x:y:)](/documentation/swiftui/shape/offset(x:y:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
