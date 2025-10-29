---
title: chartLineStyleScale(domain:mapping:)
description: Configures the line style scale for charts.
source: https://developer.apple.com/documentation/swiftui/view/chartlinestylescale(domain:mapping:)
timestamp: 2025-10-29T00:09:40.619Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartLineStyleScale(domain:mapping:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the line style scale for charts.

```swift
nonisolated func chartLineStyleScale<Domain>(domain: Domain, mapping: @escaping (Domain.Element) -> StrokeStyle) -> some View where Domain : Collection, Domain.Element : Plottable
```

## Parameters

**domain**

The possible data values plotted as line style in the chart.



**mapping**

Maps data categories to line styles.



## Line style scales

- [chartLineStyleScale(_:)](/documentation/swiftui/view/chartlinestylescale(_:))
- [chartLineStyleScale(domain:)](/documentation/swiftui/view/chartlinestylescale(domain:))
- [chartLineStyleScale(domain:range:)](/documentation/swiftui/view/chartlinestylescale(domain:range:))
- [chartLineStyleScale(range:)](/documentation/swiftui/view/chartlinestylescale(range:))
- [chartLineStyleScale(mapping:)](/documentation/swiftui/view/chartlinestylescale(mapping:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
