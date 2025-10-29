---
title: rotation3DEffect(_:axis:anchor:)
description: Rotates content by an angle about an axis that you specify as a tuple of elements.
source: https://developer.apple.com/documentation/swiftui/visualeffect/rotation3deffect(_:axis:anchor:)
timestamp: 2025-10-29T00:14:44.093Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visualeffect](/documentation/swiftui/visualeffect)

**Instance Method**

# rotation3DEffect(_:axis:anchor:)

**Available on:** visionOS 1.0+

> Rotates content by an angle about an axis that you specify as a tuple of elements.

```swift
func rotation3DEffect(_ angle: Angle, axis: (x: CGFloat, y: CGFloat, z: CGFloat), anchor: UnitPoint3D = .center) -> some VisualEffect
```

## Parameters

**angle**

The angle by which to rotate the content.



**axis**

The axis of rotation, specified as a tuple with named elements for each of the three spatial dimensions.



**anchor**

The unit point within the content about which to perform the rotation. The default value is [center](/documentation/swiftui/unitpoint3d/center).



## Return Value

A rotation effect.

## Discussion

> [!NOTE]
> During an animation, the angle and each element of the axis is interpolated separately, which may cause undesirable results. To achieve more natural animations, consider using [rotation3DEffect(_:anchor:)](/documentation/swiftui/view/rotation3deffect(_:anchor:))

This effect causes the content to appear rotated, but doesn’t change the content’s frame. The following code applies a rotation of 45° about the y-axis, using the default anchor point at the center of the content:

```swift
Model3D(named: "robot")
    .visualEffect { content, geometryProxy in
        content
            .rotation3DEffect(.degrees(45), axis: (x: 0, y: 1, z: 0))
    }
```

> [!NOTE]
> The following example is not equivalent to the previous. This example will use spherical linear interpolation during an animation.

```swift
Model3D(named: "robot")
    .rotation3DEffect(Rotation3D(.init(degrees: 45), axis: .y)
```

## Rotating

- [rotationEffect(_:anchor:)](/documentation/swiftui/visualeffect/rotationeffect(_:anchor:))
- [rotation3DEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/visualeffect/rotation3deffect(_:axis:anchor:anchorz:perspective:))
- [perspectiveRotationEffect(_:axis:anchor:perspective:)](/documentation/swiftui/visualeffect/perspectiverotationeffect(_:axis:anchor:perspective:))
- [rotation3DEffect(_:anchor:)](/documentation/swiftui/visualeffect/rotation3deffect(_:anchor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
