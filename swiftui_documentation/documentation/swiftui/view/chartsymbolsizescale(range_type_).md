---
title: chartSymbolSizeScale(range:type:)
description: Configures the symbol size scale for charts.
source: https://developer.apple.com/documentation/swiftui/view/chartsymbolsizescale(range:type:)
timestamp: 2025-10-29T00:15:16.721Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartSymbolSizeScale(range:type:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the symbol size scale for charts.

```swift
nonisolated func chartSymbolSizeScale<Range>(range: Range, type: ScaleType? = nil) -> some View where Range : ScaleRange, Range.VisualValue == CGFloat
```

## Parameters

**range**

The range of symbol size that correspond to the scale domain.



**type**

The scale type.



## Symbol size scales

- [chartSymbolSizeScale(_:)](/documentation/swiftui/view/chartsymbolsizescale(_:))
- [chartSymbolSizeScale(domain:range:type:)](/documentation/swiftui/view/chartsymbolsizescale(domain:range:type:))
- [chartSymbolSizeScale(domain:type:)](/documentation/swiftui/view/chartsymbolsizescale(domain:type:))
- [chartSymbolSizeScale(domain:mapping:)](/documentation/swiftui/view/chartsymbolsizescale(domain:mapping:))
- [chartSymbolSizeScale(mapping:)](/documentation/swiftui/view/chartsymbolsizescale(mapping:))
- [chartSymbolSizeScale(type:)](/documentation/swiftui/view/chartsymbolsizescale(type:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
