---
title: chartSymbolSizeScale(domain:mapping:)
description: Configures the symbol size scale for charts.
source: https://developer.apple.com/documentation/swiftui/view/chartsymbolsizescale(domain:mapping:)
timestamp: 2025-10-29T00:14:52.765Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartSymbolSizeScale(domain:mapping:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the symbol size scale for charts.

```swift
nonisolated func chartSymbolSizeScale<Domain>(domain: Domain, mapping: @escaping (Domain.Element) -> CGFloat) -> some View where Domain : Collection, Domain.Element : Plottable
```

## Parameters

**domain**

The possible data values plotted as symbol size in the chart.



**mapping**

Maps data categories to symbol sizes.



## Symbol size scales

- [chartSymbolSizeScale(_:)](/documentation/swiftui/view/chartsymbolsizescale(_:))
- [chartSymbolSizeScale(domain:range:type:)](/documentation/swiftui/view/chartsymbolsizescale(domain:range:type:))
- [chartSymbolSizeScale(domain:type:)](/documentation/swiftui/view/chartsymbolsizescale(domain:type:))
- [chartSymbolSizeScale(mapping:)](/documentation/swiftui/view/chartsymbolsizescale(mapping:))
- [chartSymbolSizeScale(range:type:)](/documentation/swiftui/view/chartsymbolsizescale(range:type:))
- [chartSymbolSizeScale(type:)](/documentation/swiftui/view/chartsymbolsizescale(type:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
