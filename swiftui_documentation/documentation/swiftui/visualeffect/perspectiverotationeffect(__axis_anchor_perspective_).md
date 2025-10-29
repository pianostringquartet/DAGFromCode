---
title: perspectiveRotationEffect(_:axis:anchor:perspective:)
description: Renders content as if it’s rotated in three dimensions around the specified axis.
source: https://developer.apple.com/documentation/swiftui/visualeffect/perspectiverotationeffect(_:axis:anchor:perspective:)
timestamp: 2025-10-29T00:09:36.774Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visualeffect](/documentation/swiftui/visualeffect)

**Instance Method**

# perspectiveRotationEffect(_:axis:anchor:perspective:)

**Available on:** visionOS 1.0+

> Renders content as if it’s rotated in three dimensions around the specified axis.

```swift
func perspectiveRotationEffect(_ angle: Angle, axis: (x: CGFloat, y: CGFloat, z: CGFloat), anchor: UnitPoint3D = .back, perspective: CGFloat = 1) -> some VisualEffect
```

## Parameters

**angle**

The angle by which to rotate the content.



**axis**

The axis of rotation, specified as a tuple with named elements for each of the three spatial dimensions.



**anchor**

A unit point within the content about which to perform the rotation. The default value is [center](/documentation/swiftui/unitpoint3d/center).



**perspective**

The relative vanishing point for the rotation. The default is `1`.



## Return Value

A rotation effect.

## Discussion

Use this method to create the effect of rotating content in three dimensions around a specified axis of rotation. The modifier projects two dimensional content onto the original content’s plane. Use the `perspective` input to control the renderer’s vanishing point. The following example creates the appearance of rotating text 45˚ about the y-axis:

```swift
Text("Rotation by passing an angle in degrees")
    .visualEffect { content, geometryProxy in
        content
            .perspectiveRotationEffect(
                .degrees(45),
                axis: (x: 0.0, y: 1.0, z: 0.0),
                anchor: .center,
                perspective: 1)
        }
    .border(Color.gray)
```



> [!IMPORTANT]
> To truly rotate content in three dimensions, use a 3D rotation effect without a perspective input like [rotation3DEffect(_:axis:anchor:)](/documentation/swiftui/visualeffect/rotation3deffect(_:axis:anchor:)).

## Rotating

- [rotationEffect(_:anchor:)](/documentation/swiftui/visualeffect/rotationeffect(_:anchor:))
- [rotation3DEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/visualeffect/rotation3deffect(_:axis:anchor:anchorz:perspective:))
- [rotation3DEffect(_:anchor:)](/documentation/swiftui/visualeffect/rotation3deffect(_:anchor:))
- [rotation3DEffect(_:axis:anchor:)](/documentation/swiftui/visualeffect/rotation3deffect(_:axis:anchor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
