---
title: scale(x:y:anchor:)
description: Scales this shape without changing its bounding frame.
source: https://developer.apple.com/documentation/swiftui/shape/scale(x:y:anchor:)
timestamp: 2025-10-29T00:11:11.021Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Instance Method**

# scale(x:y:anchor:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Scales this shape without changing its bounding frame.

```swift
func scale(x: CGFloat = 1, y: CGFloat = 1, anchor: UnitPoint = .center) -> ScaledShape<Self>
```

## Parameters

**x**

The multiplication factor used to resize this shape along its x-axis.



**y**

The multiplication factor used to resize this shape along its y-axis.



## Return Value

A scaled form of this shape.

## Discussion

Both the `x` and `y` multiplication factors halve their respective dimension’s size when set to `0.5`, maintain their existing size when set to `1`, double their size when set to `2`, and so forth.

## Transforming a shape

- [trim(from:to:)](/documentation/swiftui/shape/trim(from:to:))
- [transform(_:)](/documentation/swiftui/shape/transform(_:))
- [size(_:)](/documentation/swiftui/shape/size(_:))
- [size(width:height:)](/documentation/swiftui/shape/size(width:height:))
- [scale(_:anchor:)](/documentation/swiftui/shape/scale(_:anchor:))
- [rotation(_:anchor:)](/documentation/swiftui/shape/rotation(_:anchor:))
- [offset(_:)](/documentation/swiftui/shape/offset(_:))
- [offset(x:y:)](/documentation/swiftui/shape/offset(x:y:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
