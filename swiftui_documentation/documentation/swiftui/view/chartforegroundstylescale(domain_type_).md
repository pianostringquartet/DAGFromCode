---
title: chartForegroundStyleScale(domain:type:)
description: Configures the foreground style scale for charts.
source: https://developer.apple.com/documentation/swiftui/view/chartforegroundstylescale(domain:type:)
timestamp: 2025-10-29T00:11:04.764Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartForegroundStyleScale(domain:type:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the foreground style scale for charts.

```swift
nonisolated func chartForegroundStyleScale<Domain>(domain: Domain, type: ScaleType? = nil) -> some View where Domain : ScaleDomain
```

## Parameters

**domain**

The possible data values plotted as foreground style in the chart. You can define the domain with a `ClosedRange` for number or `Date` values (e.g., `0 ... 500`), and with an array for categorical values (e.g., `["A", "B", "C"]`)



**type**

The scale type.



## Styles

- [chartBackground(alignment:content:)](/documentation/swiftui/view/chartbackground(alignment:content:))
- [chartForegroundStyleScale(_:)](/documentation/swiftui/view/chartforegroundstylescale(_:))
- [chartForegroundStyleScale(domain:range:type:)](/documentation/swiftui/view/chartforegroundstylescale(domain:range:type:))
- [chartForegroundStyleScale(domain:mapping:)](/documentation/swiftui/view/chartforegroundstylescale(domain:mapping:))
- [chartForegroundStyleScale(mapping:)](/documentation/swiftui/view/chartforegroundstylescale(mapping:))
- [chartForegroundStyleScale(range:type:)](/documentation/swiftui/view/chartforegroundstylescale(range:type:))
- [chartForegroundStyleScale(type:)](/documentation/swiftui/view/chartforegroundstylescale(type:))
- [chartPlotStyle(content:)](/documentation/swiftui/view/chartplotstyle(content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
