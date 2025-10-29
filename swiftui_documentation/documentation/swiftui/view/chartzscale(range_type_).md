---
title: chartZScale(range:type:)
description: Configures the z scale for 3D charts.
source: https://developer.apple.com/documentation/swiftui/view/chartzscale(range:type:)
timestamp: 2025-10-29T00:09:26.575Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartZScale(range:type:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> Configures the z scale for 3D charts.

```swift
nonisolated func chartZScale<Range>(range: Range, type: ScaleType? = nil) -> some View where Range : PositionScaleRange
```

## Parameters

**range**

The range of z positions that correspond to the scale domain. By default the range is determined by the dimension of the plot area.



**type**

The scale type.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
