---
title: scaleEffect(_:anchor:)
description: Scales this view uniformly by the specified factor, relative to an anchor point.
source: https://developer.apple.com/documentation/swiftui/visualeffect/scaleeffect(_:anchor:)
timestamp: 2025-10-29T00:13:03.037Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visualeffect](/documentation/swiftui/visualeffect)

**Instance Method**

# scaleEffect(_:anchor:)

**Available on:** visionOS 1.0+

> Scales this view uniformly by the specified factor, relative to an anchor point.

```swift
func scaleEffect(_ s: CGFloat, anchor: UnitPoint3D = .center) -> some VisualEffect
```

## Parameters

**s**

The scale factor for this view.



**anchor**

The anchor point about which to scale the view. Defaults to center.



## Return Value

An effect that scales this view by `s` in all dimensions.

## Discussion

The original dimensions of the view are considered to be unchanged by scaling the contents. To change the dimensions of the view, use a modifier like `frame()` instead.

## Scaling

- [scaleEffect(x:y:anchor:)](/documentation/swiftui/visualeffect/scaleeffect(x:y:anchor:))
- [scaleEffect(x:y:z:anchor:)](/documentation/swiftui/visualeffect/scaleeffect(x:y:z:anchor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
