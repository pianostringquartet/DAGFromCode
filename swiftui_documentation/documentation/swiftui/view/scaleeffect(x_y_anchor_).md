---
title: scaleEffect(x:y:anchor:)
description: Scales this view’s rendered output by the given horizontal and vertical amounts, relative to an anchor point.
source: https://developer.apple.com/documentation/swiftui/view/scaleeffect(x:y:anchor:)
timestamp: 2025-10-29T00:11:05.701Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# scaleEffect(x:y:anchor:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Scales this view’s rendered output by the given horizontal and vertical amounts, relative to an anchor point.

```swift
nonisolated func scaleEffect(x: CGFloat = 1.0, y: CGFloat = 1.0, anchor: UnitPoint = .center) -> some View
```

## Parameters

**x**

An amount that represents the horizontal amount to scale the view. The default value is `1.0`.



**y**

An amount that represents the vertical amount to scale the view. The default value is `1.0`.



**anchor**

The anchor point that indicates the starting position for the scale operation.



## Discussion

Use `scaleEffect(x:y:anchor:)` to apply a scaling transform to a view by a specific horizontal and vertical amount.

```swift
Image(systemName: "envelope.badge.fill")
    .resizable()
    .frame(width: 100, height: 100, alignment: .center)
    .foregroundColor(Color.red)
    .scaleEffect(x: 0.5, y: 0.5, anchor: .bottomTrailing)
    .border(Color.gray)
```



## Scaling, rotating, or transforming a view

- [scaledToFill()](/documentation/swiftui/view/scaledtofill())
- [scaledToFit()](/documentation/swiftui/view/scaledtofit())
- [scaleEffect(_:anchor:)](/documentation/swiftui/view/scaleeffect(_:anchor:))
- [scaleEffect(x:y:z:anchor:)](/documentation/swiftui/view/scaleeffect(x:y:z:anchor:))
- [aspectRatio(_:contentMode:)](/documentation/swiftui/view/aspectratio(_:contentmode:))
- [rotationEffect(_:anchor:)](/documentation/swiftui/view/rotationeffect(_:anchor:))
- [rotation3DEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/view/rotation3deffect(_:axis:anchor:anchorz:perspective:))
- [perspectiveRotationEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/view/perspectiverotationeffect(_:axis:anchor:anchorz:perspective:))
- [rotation3DEffect(_:anchor:)](/documentation/swiftui/view/rotation3deffect(_:anchor:))
- [rotation3DEffect(_:axis:anchor:)](/documentation/swiftui/view/rotation3deffect(_:axis:anchor:))
- [transformEffect(_:)](/documentation/swiftui/view/transformeffect(_:))
- [transform3DEffect(_:)](/documentation/swiftui/view/transform3deffect(_:))
- [projectionEffect(_:)](/documentation/swiftui/view/projectioneffect(_:))
- [ProjectionTransform](/documentation/swiftui/projectiontransform)
- [ContentMode](/documentation/swiftui/contentmode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
