---
title: chartXAxisStyle(content:)
description: Configures the x axis content of charts.
source: https://developer.apple.com/documentation/swiftui/view/chartxaxisstyle(content:)
timestamp: 2025-10-29T00:11:30.268Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartXAxisStyle(content:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Configures the x axis content of charts.

```swift
nonisolated func chartXAxisStyle<Content>(@ViewBuilder content: @escaping (ChartAxisContent) -> Content) -> some View where Content : View
```

## Parameters

**content**

A closure that returns the content of the axis.



## Discussion

Use this modifier to configure the size or aspect ratio of the plot area of charts.

For example:

```swift
Chart(data: data) {
    BarMark(x: .value("Category", $0.category))
}
.chartXAxisStyle { axis in
    axis.opacity(0.5)
}
```

## Axes

- [chartXAxis(_:)](/documentation/swiftui/view/chartxaxis(_:))
- [chartXAxis(content:)](/documentation/swiftui/view/chartxaxis(content:))
- [chartYAxis(_:)](/documentation/swiftui/view/chartyaxis(_:))
- [chartYAxis(content:)](/documentation/swiftui/view/chartyaxis(content:))
- [chartYAxisStyle(content:)](/documentation/swiftui/view/chartyaxisstyle(content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
