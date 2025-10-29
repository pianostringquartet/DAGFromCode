---
title: scaleEffect(x:y:z:anchor:)
description: Scales this view by the specified horizontal, vertical, and depth factors, relative to an anchor point.
source: https://developer.apple.com/documentation/swiftui/visualeffect/scaleeffect(x:y:z:anchor:)
timestamp: 2025-10-29T00:14:12.119Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visualeffect](/documentation/swiftui/visualeffect)

**Instance Method**

# scaleEffect(x:y:z:anchor:)

**Available on:** visionOS 1.0+

> Scales this view by the specified horizontal, vertical, and depth factors, relative to an anchor point.

```swift
func scaleEffect(x: CGFloat = 1.0, y: CGFloat = 1.0, z: CGFloat = 1.0, anchor: UnitPoint3D = .center) -> some VisualEffect
```

## Parameters

**x**

The horizontal scale factor for this view.



**y**

The vertical scale factor for this view.



**z**

The depth scale factor for this view.



**anchor**

The anchor point about which to scale the view. Defaults to center.



## Return Value

An effect that scales this view by `x`,`y`, and `z`.

## Discussion

The original dimensions of the view are considered to be unchanged by scaling the contents. To change the dimensions of the view, use a modifier like `frame()` instead.

## Scaling

- [scaleEffect(_:anchor:)](/documentation/swiftui/visualeffect/scaleeffect(_:anchor:))
- [scaleEffect(x:y:anchor:)](/documentation/swiftui/visualeffect/scaleeffect(x:y:anchor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
