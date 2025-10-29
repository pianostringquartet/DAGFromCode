---
title: scale(_:anchor:)
description: Scales this shape without changing its bounding frame.
source: https://developer.apple.com/documentation/swiftui/shape/scale(_:anchor:)
timestamp: 2025-10-29T00:14:49.653Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# scale(_:anchor:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Scales this shape without changing its bounding frame.

```swift
func scale(_ scale: CGFloat, anchor: UnitPoint = .center) -> ScaledShape<Self>
```

## Parameters

**scale**

The multiplication factor used to resize this shape. A value of `0` scales the shape to have no size, `0.5` scales to half size in both dimensions, `2` scales to twice the regular size, and so on.



## Return Value

A scaled form of this shape.

## Transforming a shape

- [trim(from:to:)](/documentation/swiftui/shape/trim(from:to:))
- [transform(_:)](/documentation/swiftui/shape/transform(_:))
- [size(_:)](/documentation/swiftui/shape/size(_:))
- [size(width:height:)](/documentation/swiftui/shape/size(width:height:))
- [scale(x:y:anchor:)](/documentation/swiftui/shape/scale(x:y:anchor:))
- [rotation(_:anchor:)](/documentation/swiftui/shape/rotation(_:anchor:))
- [offset(_:)](/documentation/swiftui/shape/offset(_:))
- [offset(x:y:)](/documentation/swiftui/shape/offset(x:y:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
