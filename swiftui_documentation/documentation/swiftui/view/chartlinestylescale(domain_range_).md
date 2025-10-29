---
title: chartLineStyleScale(domain:range:)
description: Configures the line style scale for charts.
source: https://developer.apple.com/documentation/swiftui/view/chartlinestylescale(domain:range:)
timestamp: 2025-10-29T00:09:24.072Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartLineStyleScale(domain:range:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the line style scale for charts.

```swift
nonisolated func chartLineStyleScale<Domain, Range>(domain: Domain, range: Range) -> some View where Domain : ScaleDomain, Range : ScaleRange, Range.VisualValue == StrokeStyle
```

## Parameters

**domain**

The possible data values plotted as line styles in the chart. You can define the domain with an array for categorical values (e.g., `["A", "B", "C"]`)



**range**

The range of line styles that correspond to the scale domain.



## Line style scales

- [chartLineStyleScale(_:)](/documentation/swiftui/view/chartlinestylescale(_:))
- [chartLineStyleScale(domain:)](/documentation/swiftui/view/chartlinestylescale(domain:))
- [chartLineStyleScale(range:)](/documentation/swiftui/view/chartlinestylescale(range:))
- [chartLineStyleScale(domain:mapping:)](/documentation/swiftui/view/chartlinestylescale(domain:mapping:))
- [chartLineStyleScale(mapping:)](/documentation/swiftui/view/chartlinestylescale(mapping:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
