---
title: chartSymbolScale(domain:range:)
description: Configures the symbol style scale for charts.
source: https://developer.apple.com/documentation/swiftui/view/chartsymbolscale(domain:range:)
timestamp: 2025-10-29T00:11:56.260Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartSymbolScale(domain:range:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the symbol style scale for charts.

```swift
nonisolated func chartSymbolScale<Domain, Range>(domain: Domain, range: Range) -> some View where Domain : ScaleDomain, Range : ScaleRange, Range.VisualValue : ChartSymbolShape
```

## Parameters

**domain**

The possible data values plotted as symbols in the chart. You can define the domain with an array for categorical values (e.g., `["A", "B", "C"]`)



**range**

The range of symbols that correspond to the scale domain.



## Symbol scales

- [chartSymbolScale(_:)](/documentation/swiftui/view/chartsymbolscale(_:))
- [chartSymbolScale(domain:)](/documentation/swiftui/view/chartsymbolscale(domain:))
- [chartSymbolScale(domain:mapping:)](/documentation/swiftui/view/chartsymbolscale(domain:mapping:))
- [chartSymbolScale(mapping:)](/documentation/swiftui/view/chartsymbolscale(mapping:))
- [chartSymbolScale(range:)](/documentation/swiftui/view/chartsymbolscale(range:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
