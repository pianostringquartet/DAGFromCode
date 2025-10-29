---
title: scaleEffect(x:y:anchor:)
description: Scales the view’s rendered output by the given horizontal and vertical amounts, relative to an anchor point.
source: https://developer.apple.com/documentation/swiftui/hovereffectcontent/scaleeffect(x:y:anchor:)
timestamp: 2025-10-29T00:14:42.951Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectcontent](/documentation/swiftui/hovereffectcontent)

**Instance Method**

# scaleEffect(x:y:anchor:)

**Available on:** visionOS 2.0+

> Scales the view’s rendered output by the given horizontal and vertical amounts, relative to an anchor point.

```swift
func scaleEffect(x: CGFloat = 1.0, y: CGFloat = 1.0, anchor: UnitPoint = .center) -> some HoverEffectContent
```

## Parameters

**x**

An amount that represents the horizontal amount to scale the view. The default value is `1.0`.



**y**

An amount that represents the vertical amount to scale the view. The default value is `1.0`.



**anchor**

The point with a default of [center](/documentation/swiftui/unitpoint/center) that defines the location within the view from which to apply the transformation.



## Return Value

An effect that scales the view’s rendered output.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
