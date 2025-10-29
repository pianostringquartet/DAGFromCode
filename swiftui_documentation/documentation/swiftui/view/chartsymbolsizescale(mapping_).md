---
title: chartSymbolSizeScale(mapping:)
description: Configures the symbol size scale for charts.
source: https://developer.apple.com/documentation/swiftui/view/chartsymbolsizescale(mapping:)
timestamp: 2025-10-29T00:13:21.832Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartSymbolSizeScale(mapping:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the symbol size scale for charts.

```swift
nonisolated func chartSymbolSizeScale<DataValue>(mapping: @escaping (DataValue) -> CGFloat) -> some View where DataValue : Plottable
```

## Parameters

**mapping**

Maps data categories to symbol sizes.



## Symbol size scales

- [chartSymbolSizeScale(_:)](/documentation/swiftui/view/chartsymbolsizescale(_:))
- [chartSymbolSizeScale(domain:range:type:)](/documentation/swiftui/view/chartsymbolsizescale(domain:range:type:))
- [chartSymbolSizeScale(domain:type:)](/documentation/swiftui/view/chartsymbolsizescale(domain:type:))
- [chartSymbolSizeScale(domain:mapping:)](/documentation/swiftui/view/chartsymbolsizescale(domain:mapping:))
- [chartSymbolSizeScale(range:type:)](/documentation/swiftui/view/chartsymbolsizescale(range:type:))
- [chartSymbolSizeScale(type:)](/documentation/swiftui/view/chartsymbolsizescale(type:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
