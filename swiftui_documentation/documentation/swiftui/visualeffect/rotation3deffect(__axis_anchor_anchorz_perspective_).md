---
title: rotation3DEffect(_:axis:anchor:anchorZ:perspective:)
description: Renders content as if it’s rotated in three dimensions around the specified axis.
source: https://developer.apple.com/documentation/swiftui/visualeffect/rotation3deffect(_:axis:anchor:anchorz:perspective:)
timestamp: 2025-10-29T00:10:50.525Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visualeffect](/documentation/swiftui/visualeffect)

**Instance Method**

# rotation3DEffect(_:axis:anchor:anchorZ:perspective:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Renders content as if it’s rotated in three dimensions around the specified axis.

```swift
func rotation3DEffect(_ angle: Angle, axis: (x: CGFloat, y: CGFloat, z: CGFloat), anchor: UnitPoint = .center, anchorZ: CGFloat = 0, perspective: CGFloat = 1) -> some VisualEffect
```

## Parameters

**angle**

The angle by which to rotate the content.



**axis**

The axis of rotation, specified as a tuple with named elements for each of the three spatial dimensions.



**anchor**

A two dimensional unit point within the content about which to perform the rotation. The default value is [center](/documentation/swiftui/unitpoint/center).



**anchorZ**

The location on the z-axis around which to rotate the content. The default is `0`.



**perspective**

The relative vanishing point for the rotation. The default is `1`.



## Return Value

A rotation effect.

## Discussion

Use this method to create the effect of rotating a two dimensional view in three dimensions around a specified axis of rotation. The effect projects the rotated content onto the original content’s plane. Use the `perspective` input to control the renderer’s vanishing point. The following example creates the appearance of rotating text 45˚ about the y-axis:

```swift
Text("Rotation by passing an angle in degrees")
    .visualEffect { content, geometryProxy in
        content
            .rotation3DEffect(
                .degrees(45),
                axis: (x: 0.0, y: 1.0, z: 0.0),
                anchor: .center,
                anchorZ: 0,
                perspective: 1)
        }
    .border(Color.gray)
```



> [!IMPORTANT]
> In visionOS, create this effect with [perspectiveRotationEffect(_:axis:anchor:perspective:)](/documentation/swiftui/visualeffect/perspectiverotationeffect(_:axis:anchor:perspective:)) instead. To truly rotate a view in three dimensions, use a 3D rotation effect without a perspective input like [rotation3DEffect(_:axis:anchor:)](/documentation/swiftui/visualeffect/rotation3deffect(_:axis:anchor:)).

## Rotating

- [rotationEffect(_:anchor:)](/documentation/swiftui/visualeffect/rotationeffect(_:anchor:))
- [perspectiveRotationEffect(_:axis:anchor:perspective:)](/documentation/swiftui/visualeffect/perspectiverotationeffect(_:axis:anchor:perspective:))
- [rotation3DEffect(_:anchor:)](/documentation/swiftui/visualeffect/rotation3deffect(_:anchor:))
- [rotation3DEffect(_:axis:anchor:)](/documentation/swiftui/visualeffect/rotation3deffect(_:axis:anchor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
