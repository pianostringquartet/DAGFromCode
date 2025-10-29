---
title: scaleEffect(_:anchor:)
description: Scales this view’s rendered output by the given amount in both the horizontal and vertical directions, relative to an anchor point.
source: https://developer.apple.com/documentation/swiftui/view/scaleeffect(_:anchor:)
timestamp: 2025-10-29T00:10:43.536Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# scaleEffect(_:anchor:)

**Available on:** iOS 13.0+, iPadOS 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Scales this view’s rendered output by the given amount in both the horizontal and vertical directions, relative to an anchor point.

```swift
nonisolated func scaleEffect(_ s: CGFloat, anchor: UnitPoint = .center) -> ModifiedContent<Self, _UniformScaleEffect>
```

## Parameters

**s**

The amount to scale the view in the view in both the horizontal and vertical directions.



**anchor**

The anchor point with a default of [center](/documentation/swiftui/unitpoint/center) that indicates the starting position for the scale operation.



## Discussion

Use `scaleEffect(_:anchor:)` to apply a horizontally and vertically scaling transform to a view.

```swift
Image(systemName: "envelope.badge.fill")
    .resizable()
    .frame(width: 100, height: 100, alignment: .center)
    .foregroundColor(Color.red)
    .scaleEffect(2, anchor: .leading)
    .border(Color.gray)
```



## Scaling, rotating, or transforming a view

- [scaledToFill()](/documentation/swiftui/view/scaledtofill())
- [scaledToFit()](/documentation/swiftui/view/scaledtofit())
- [scaleEffect(x:y:anchor:)](/documentation/swiftui/view/scaleeffect(x:y:anchor:))
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
