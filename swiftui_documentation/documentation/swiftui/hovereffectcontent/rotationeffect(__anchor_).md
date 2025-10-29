---
title: rotationEffect(_:anchor:)
description: Rotates content in two dimensions around the specified point.
source: https://developer.apple.com/documentation/swiftui/hovereffectcontent/rotationeffect(_:anchor:)
timestamp: 2025-10-29T00:09:48.636Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectcontent](/documentation/swiftui/hovereffectcontent)

**Instance Method**

# rotationEffect(_:anchor:)

**Available on:** visionOS 2.0+

> Rotates content in two dimensions around the specified point.

```swift
func rotationEffect(_ angle: Angle, anchor: UnitPoint = .center) -> some HoverEffectContent
```

## Parameters

**angle**

The angle by which to rotate the content.



**anchor**

A unit point within the content about which to perform the rotation. The default value is [center](/documentation/swiftui/unitpoint/center).



## Return Value

A rotation effect.

## Discussion

This effect rotates the content around the axis that points out of the xy-plane. It has no effect on the content’s frame.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
