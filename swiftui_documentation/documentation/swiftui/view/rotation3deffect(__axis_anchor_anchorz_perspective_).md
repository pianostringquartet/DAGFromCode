---
title: rotation3DEffect(_:axis:anchor:anchorZ:perspective:)
description: Renders a view’s content as if it’s rotated in three dimensions around the specified axis.
source: https://developer.apple.com/documentation/swiftui/view/rotation3deffect(_:axis:anchor:anchorz:perspective:)
timestamp: 2025-10-29T00:10:51.794Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# rotation3DEffect(_:axis:anchor:anchorZ:perspective:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Renders a view’s content as if it’s rotated in three dimensions around the specified axis.

```swift
nonisolated func rotation3DEffect(_ angle: Angle, axis: (x: CGFloat, y: CGFloat, z: CGFloat), anchor: UnitPoint = .center, anchorZ: CGFloat = 0, perspective: CGFloat = 1) -> some View
```

## Parameters

**angle**

The angle by which to rotate the view’s content.



**axis**

The axis of rotation, specified as a tuple with named elements for each of the three spatial dimensions.



**anchor**

A two dimensional unit point within the view about which to perform the rotation. The default value is [center](/documentation/swiftui/unitpoint/center).



**anchorZ**

The location on the z-axis around which to rotate the content. The default is `0`.



**perspective**

The relative vanishing point for the rotation. The default is `1`.



## Return Value

A view with rotated content.

## Discussion

Use this method to create the effect of rotating a view in three dimensions around a specified axis of rotation. The modifier projects the rotated content onto the original view’s plane. Use the `perspective` value to control the renderer’s vanishing point. The following example creates the appearance of rotating text 45˚ about the y-axis:

```swift
Text("Rotation by passing an angle in degrees")
    .rotation3DEffect(
        .degrees(45),
        axis: (x: 0.0, y: 1.0, z: 0.0),
        anchor: .center,
        anchorZ: 0,
        perspective: 1)
    .border(Color.gray)
```



> [!IMPORTANT]
> In visionOS, create this effect with [perspectiveRotationEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/view/perspectiverotationeffect(_:axis:anchor:anchorz:perspective:)) instead. To truly rotate a view in three dimensions, use a 3D rotation modifier without a perspective input like [rotation3DEffect(_:axis:anchor:)](/documentation/swiftui/view/rotation3deffect(_:axis:anchor:)).

## Scaling, rotating, or transforming a view

- [scaledToFill()](/documentation/swiftui/view/scaledtofill())
- [scaledToFit()](/documentation/swiftui/view/scaledtofit())
- [scaleEffect(_:anchor:)](/documentation/swiftui/view/scaleeffect(_:anchor:))
- [scaleEffect(x:y:anchor:)](/documentation/swiftui/view/scaleeffect(x:y:anchor:))
- [scaleEffect(x:y:z:anchor:)](/documentation/swiftui/view/scaleeffect(x:y:z:anchor:))
- [aspectRatio(_:contentMode:)](/documentation/swiftui/view/aspectratio(_:contentmode:))
- [rotationEffect(_:anchor:)](/documentation/swiftui/view/rotationeffect(_:anchor:))
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
