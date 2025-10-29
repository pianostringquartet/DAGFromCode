---
title: clipShape(_:style:)
description: Sets a clipping shape for the view.
source: https://developer.apple.com/documentation/swiftui/hovereffectcontent/clipshape(_:style:)
timestamp: 2025-10-29T00:10:15.558Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectcontent](/documentation/swiftui/hovereffectcontent)

**Instance Method**

# clipShape(_:style:)

**Available on:** visionOS 2.0+

> Sets a clipping shape for the view.

```swift
func clipShape<S>(_ shape: S, style: FillStyle = FillStyle()) -> some HoverEffectContent where S : Shape
```

## Parameters

**shape**

The clipping shape to use for the view. The `shape` fills the view’s frame, while maintaining its aspect ratio.



**style**

The fill style to use when rasterizing `shape`.



## Return Value

An effect that sets the clip shape of a view.

## Discussion

Use `clipShape(_:style:)` to clip the view’s rendered output to the provided shape. By applying a clipping shape, you preserve the parts of the view covered by the shape, while eliminating other parts of the view. The clipping shape itself isn’t visible.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
