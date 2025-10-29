---
title: chartBackground(alignment:content:)
description: Adds a background to a view that contains a chart.
source: https://developer.apple.com/documentation/swiftui/view/chartbackground(alignment:content:)
timestamp: 2025-10-29T00:13:00.404Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartBackground(alignment:content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Adds a background to a view that contains a chart.

```swift
nonisolated func chartBackground<V>(alignment: Alignment = .center, @ViewBuilder content: @escaping (ChartProxy) -> V) -> some View where V : View
```

## Parameters

**alignment**

The alignment of the content.



**content**

The content of the background.



## Discussion

You can use this modifier to define a background view as a function of the chart in the view. You can access the chart with the `ChartProxy` object passed into the closure.

> [!NOTE]
> If `self` contains more than one chart, the chart proxy will refer to the first chart.

## Styles

- [chartForegroundStyleScale(_:)](/documentation/swiftui/view/chartforegroundstylescale(_:))
- [chartForegroundStyleScale(domain:range:type:)](/documentation/swiftui/view/chartforegroundstylescale(domain:range:type:))
- [chartForegroundStyleScale(domain:type:)](/documentation/swiftui/view/chartforegroundstylescale(domain:type:))
- [chartForegroundStyleScale(domain:mapping:)](/documentation/swiftui/view/chartforegroundstylescale(domain:mapping:))
- [chartForegroundStyleScale(mapping:)](/documentation/swiftui/view/chartforegroundstylescale(mapping:))
- [chartForegroundStyleScale(range:type:)](/documentation/swiftui/view/chartforegroundstylescale(range:type:))
- [chartForegroundStyleScale(type:)](/documentation/swiftui/view/chartforegroundstylescale(type:))
- [chartPlotStyle(content:)](/documentation/swiftui/view/chartplotstyle(content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
