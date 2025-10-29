---
title: rotation3DEffect(_:anchor:)
description: Rotates content by the specified 3D rotation value.
source: https://developer.apple.com/documentation/swiftui/visualeffect/rotation3deffect(_:anchor:)
timestamp: 2025-10-29T00:10:04.332Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visualeffect](/documentation/swiftui/visualeffect)

**Instance Method**

# rotation3DEffect(_:anchor:)

**Available on:** visionOS 1.0+

> Rotates content by the specified 3D rotation value.

```swift
func rotation3DEffect(_ rotation: Rotation3D, anchor: UnitPoint3D = .center) -> some VisualEffect
```

## Parameters

**rotation**

A rotation to apply to the content.



**anchor**

The unit point within the content about which to perform the rotation. The default value is [center](/documentation/swiftui/unitpoint3d/center).



## Return Value

A rotation effect.

## Discussion

This effect causes the content to appear rotated, but doesn’t change the content’s frame. The following code applies a rotation of 45° about the y-axis, using the default anchor point at the center of the content:

```swift
Model3D(named: "robot")
    .visualEffect { content, geometryProxy in
        content
            .rotation3DEffect(Rotation3D(angle: .degrees(45), axis: .y))
    }
```

During an animation, this modifier uses spherical linear interpolation, which produces more natural animations, but doesn’t support rotations over 360 degrees. To specify angles over 360 degrees, consider using `View/rotation3DEffect(_:axis:anchor:)-4enag`.

## Rotating

- [rotationEffect(_:anchor:)](/documentation/swiftui/visualeffect/rotationeffect(_:anchor:))
- [rotation3DEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/visualeffect/rotation3deffect(_:axis:anchor:anchorz:perspective:))
- [perspectiveRotationEffect(_:axis:anchor:perspective:)](/documentation/swiftui/visualeffect/perspectiverotationeffect(_:axis:anchor:perspective:))
- [rotation3DEffect(_:axis:anchor:)](/documentation/swiftui/visualeffect/rotation3deffect(_:axis:anchor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
