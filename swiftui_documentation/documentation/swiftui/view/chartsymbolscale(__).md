---
title: chartSymbolScale(_:)
description: Configures the symbol scale for charts.
source: https://developer.apple.com/documentation/swiftui/view/chartsymbolscale(_:)
timestamp: 2025-10-29T00:12:28.821Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartSymbolScale(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the symbol scale for charts.

```swift
nonisolated func chartSymbolScale<DataValue, S>(_ mapping: KeyValuePairs<DataValue, S>) -> some View where DataValue : Plottable, S : ChartSymbolShape
```

## Parameters

**mapping**

Maps data categories to symbol shapes.



## Symbol scales

- [chartSymbolScale(domain:)](/documentation/swiftui/view/chartsymbolscale(domain:))
- [chartSymbolScale(domain:range:)](/documentation/swiftui/view/chartsymbolscale(domain:range:))
- [chartSymbolScale(domain:mapping:)](/documentation/swiftui/view/chartsymbolscale(domain:mapping:))
- [chartSymbolScale(mapping:)](/documentation/swiftui/view/chartsymbolscale(mapping:))
- [chartSymbolScale(range:)](/documentation/swiftui/view/chartsymbolscale(range:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
