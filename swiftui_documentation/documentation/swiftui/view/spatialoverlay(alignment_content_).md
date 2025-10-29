---
title: spatialOverlay(alignment:content:)
description: Adds secondary views within the 3D bounds of this view.
source: https://developer.apple.com/documentation/swiftui/view/spatialoverlay(alignment:content:)
timestamp: 2025-10-29T00:10:22.711Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# spatialOverlay(alignment:content:)

**Available on:** visionOS 26.0+

> Adds secondary views within the 3D bounds of this view.

```swift
nonisolated func spatialOverlay<V>(alignment: Alignment3D = .center, @ViewBuilder content: () -> V) -> some View where V : View
```

## Parameters

**alignment**

The alignment with a default value of [center](/documentation/swiftui/alignment3d/center) that you use to position the secondary view.



**content**

The view builder which produces views to occupy the same 3D space as this view. Multiple views provided by content are organized into a [Spatial Container](/documentation/swiftui/spatialcontainer).



## Return Value

A view that adds `content` within the view’s 3D bounds.

## Discussion

Multiple views provided by `content` are stacked depthwise.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
