---
title: rotationEffect(_:anchor:)
description: Rotates content in two dimensions around the specified point.
source: https://developer.apple.com/documentation/swiftui/visualeffect/rotationeffect(_:anchor:)
timestamp: 2025-10-29T00:12:25.270Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visualeffect](/documentation/swiftui/visualeffect)

**Instance Method**

# rotationEffect(_:anchor:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Rotates content in two dimensions around the specified point.

```swift
func rotationEffect(_ angle: Angle, anchor: UnitPoint = .center) -> some VisualEffect
```

## Parameters

**angle**

The angle by which to rotate the content.



**anchor**

A unit point within the content about which to perform the rotation. The default value is [center](/documentation/swiftui/unitpoint/center).



## Return Value

A rotation effect.

## Discussion

This effect rotates the content around the axis that points out of the xy-plane. It has no effect on the content’s frame. The following code rotates text by 22˚ and then draws a border around the modified view to show that the frame remains unchanged by the rotation:

```swift
Text("Rotation by passing an angle in degrees")
    .visualEffect { content, geometryProxy in
        content
            .rotationEffect(.degrees(22))
    }
    .border(Color.gray)
```



## Rotating

- [rotation3DEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/visualeffect/rotation3deffect(_:axis:anchor:anchorz:perspective:))
- [perspectiveRotationEffect(_:axis:anchor:perspective:)](/documentation/swiftui/visualeffect/perspectiverotationeffect(_:axis:anchor:perspective:))
- [rotation3DEffect(_:anchor:)](/documentation/swiftui/visualeffect/rotation3deffect(_:anchor:))
- [rotation3DEffect(_:axis:anchor:)](/documentation/swiftui/visualeffect/rotation3deffect(_:axis:anchor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
