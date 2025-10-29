---
title: chartYScale(range:type:)
description: Configures the y scale for charts.
source: https://developer.apple.com/documentation/swiftui/view/chartyscale(range:type:)
timestamp: 2025-10-29T00:09:20.603Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartYScale(range:type:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the y scale for charts.

```swift
nonisolated func chartYScale<Range>(range: Range, type: ScaleType? = nil) -> some View where Range : PositionScaleRange
```

## Parameters

**range**

The range of y positions that correspond to the scale domain. By default the range is determined by the dimension of the plot area. You can use `range: .plotDimension(startPadding:, endPadding:)` to add padding to the scale range.



**type**

The scale type.



## Axis scales

- [chartXScale(domain:range:type:)](/documentation/swiftui/view/chartxscale(domain:range:type:))
- [chartXScale(domain:type:)](/documentation/swiftui/view/chartxscale(domain:type:))
- [chartXScale(range:type:)](/documentation/swiftui/view/chartxscale(range:type:))
- [chartXScale(type:)](/documentation/swiftui/view/chartxscale(type:))
- [chartYScale(domain:range:type:)](/documentation/swiftui/view/chartyscale(domain:range:type:))
- [chartYScale(domain:type:)](/documentation/swiftui/view/chartyscale(domain:type:))
- [chartYScale(type:)](/documentation/swiftui/view/chartyscale(type:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
