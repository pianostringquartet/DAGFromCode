---
title: chartZScale(domain:range:type:)
description: Configures the z scale for 3D charts.
source: https://developer.apple.com/documentation/swiftui/view/chartzscale(domain:range:type:)
timestamp: 2025-10-29T00:09:47.177Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartZScale(domain:range:type:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> Configures the z scale for 3D charts.

```swift
nonisolated func chartZScale<Domain, Range>(domain: Domain, range: Range, type: ScaleType? = nil) -> some View where Domain : ScaleDomain, Range : PositionScaleRange
```

## Parameters

**domain**

The possible data values along the z axis in the chart. You can define the domain with a `ClosedRange` for numeric values.



**range**

The range of x positions that correspond to the scale domain. By default the range is determined by the dimension of the plot area.



**type**

The scale type.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
