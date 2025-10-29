---
title: chartYScale(domain:type:)
description: Configures the y scale for charts.
source: https://developer.apple.com/documentation/swiftui/view/chartyscale(domain:type:)
timestamp: 2025-10-29T00:11:41.763Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartYScale(domain:type:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the y scale for charts.

```swift
nonisolated func chartYScale<Domain>(domain: Domain, type: ScaleType? = nil) -> some View where Domain : ScaleDomain
```

## Parameters

**domain**

The possible data values along the y axis in the chart. You can define the domain with a `ClosedRange` for number or `Date` values (e.g., `0 ... 500`), and with an array for categorical values (e.g., `["A", "B", "C"]`)



**type**

The scale type.



## Axis scales

- [chartXScale(domain:range:type:)](/documentation/swiftui/view/chartxscale(domain:range:type:))
- [chartXScale(domain:type:)](/documentation/swiftui/view/chartxscale(domain:type:))
- [chartXScale(range:type:)](/documentation/swiftui/view/chartxscale(range:type:))
- [chartXScale(type:)](/documentation/swiftui/view/chartxscale(type:))
- [chartYScale(domain:range:type:)](/documentation/swiftui/view/chartyscale(domain:range:type:))
- [chartYScale(range:type:)](/documentation/swiftui/view/chartyscale(range:type:))
- [chartYScale(type:)](/documentation/swiftui/view/chartyscale(type:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
