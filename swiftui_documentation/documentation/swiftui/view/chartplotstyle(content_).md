---
title: chartPlotStyle(content:)
description: Configures the plot area of charts.
source: https://developer.apple.com/documentation/swiftui/view/chartplotstyle(content:)
timestamp: 2025-10-29T00:13:21.026Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartPlotStyle(content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the plot area of charts.

```swift
nonisolated func chartPlotStyle<Content>(@ViewBuilder content: @escaping (ChartPlotContent) -> Content) -> some View where Content : View
```

## Parameters

**content**

A closure that returns the content of the plot area.



## Discussion

Use this modifier to configure the size or aspect ratio of the plot area of charts.

For example:

```swift
Chart(data: data) {
    BarMark(x: .value("Category", $0.category))
}
.chartPlotStyle { content in
    content.frame(width: 100, height: 100)
}
```

## Styles

- [chartBackground(alignment:content:)](/documentation/swiftui/view/chartbackground(alignment:content:))
- [chartForegroundStyleScale(_:)](/documentation/swiftui/view/chartforegroundstylescale(_:))
- [chartForegroundStyleScale(domain:range:type:)](/documentation/swiftui/view/chartforegroundstylescale(domain:range:type:))
- [chartForegroundStyleScale(domain:type:)](/documentation/swiftui/view/chartforegroundstylescale(domain:type:))
- [chartForegroundStyleScale(domain:mapping:)](/documentation/swiftui/view/chartforegroundstylescale(domain:mapping:))
- [chartForegroundStyleScale(mapping:)](/documentation/swiftui/view/chartforegroundstylescale(mapping:))
- [chartForegroundStyleScale(range:type:)](/documentation/swiftui/view/chartforegroundstylescale(range:type:))
- [chartForegroundStyleScale(type:)](/documentation/swiftui/view/chartforegroundstylescale(type:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
