---
title: chartXVisibleDomain(length:)
description: Sets the length of the visible domain in the X dimension.
source: https://developer.apple.com/documentation/swiftui/view/chartxvisibledomain(length:)
timestamp: 2025-10-29T00:10:31.836Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartXVisibleDomain(length:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Sets the length of the visible domain in the X dimension.

```swift
nonisolated func chartXVisibleDomain<P>(length: P) -> some View where P : Plottable, P : Numeric
```

## Parameters

**length**

The length of the visible domain measured in data units. For categorical data, this should be the number of visible categories.



## Discussion

Use this method to control how much of the chart is visible in a scrollable chart. The example below sets the visible portion of the chart to 10 units in the X axis.

```swift
Chart(data) {
    BarMark(
        x: .value("x", $0.x),
        y: .value("y", $0.y)
    )
}
.chartScrollableAxes(.horizontal)
.chartXVisibleDomain(length: 10)
```

## Visible domain

- [chartYVisibleDomain(length:)](/documentation/swiftui/view/chartyvisibledomain(length:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
