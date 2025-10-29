---
title: chartScrollTargetBehavior(_:)
description: Sets the scroll behavior of the scrollable chart.
source: https://developer.apple.com/documentation/swiftui/view/chartscrolltargetbehavior(_:)
timestamp: 2025-10-29T00:12:07.050Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartScrollTargetBehavior(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Sets the scroll behavior of the scrollable chart.

```swift
nonisolated func chartScrollTargetBehavior(_ behavior: some ChartScrollTargetBehavior) -> some View
```

## Parameters

**behavior**

The chart scroll target behavior.



## Discussion

Use this method to control how the chart scrolls and aligns when the user finishes scrolling. The example below sets the scroll target behavior to align to the values in the chart. When the user finishes scrolling, the chart will settle to align with the values in the chart.

```swift
Chart(data) {
    BarMark(
        x: .value("x", $0.x),
        y: .value("y", $0.y)
    )
}
.chartScrollableAxes(.vertical)
.chartYVisibleDomain(length: 10)
.chartScrollTargetBehavior(.valueAligned(unit: 1))
```

## Scrolling

- [chartScrollPosition(initialX:)](/documentation/swiftui/view/chartscrollposition(initialx:))
- [chartScrollPosition(initialY:)](/documentation/swiftui/view/chartscrollposition(initialy:))
- [chartScrollPosition(x:)](/documentation/swiftui/view/chartscrollposition(x:))
- [chartScrollPosition(y:)](/documentation/swiftui/view/chartscrollposition(y:))
- [chartScrollableAxes(_:)](/documentation/swiftui/view/chartscrollableaxes(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
