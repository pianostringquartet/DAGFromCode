---
title: scaleEffect(_:anchor:)
description: Scales the view’s rendered output by the given amount in both the horizontal and vertical directions, relative to an anchor point.
source: https://developer.apple.com/documentation/swiftui/hovereffectcontent/scaleeffect(_:anchor:)
timestamp: 2025-10-29T00:12:42.290Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectcontent](/documentation/swiftui/hovereffectcontent)

**Instance Method**

# scaleEffect(_:anchor:)

**Available on:** visionOS 2.0+

> Scales the view’s rendered output by the given amount in both the horizontal and vertical directions, relative to an anchor point.

```swift
func scaleEffect(_ scale: CGFloat, anchor: UnitPoint = .center) -> some HoverEffectContent
```

## Parameters

**scale**

The amount to scale the view in the view in both the horizontal and vertical directions.



**anchor**

The point with a default of [center](/documentation/swiftui/unitpoint/center) that defines the location within the view from which to apply the transformation.



## Return Value

An effect that scales the view’s rendered output.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
