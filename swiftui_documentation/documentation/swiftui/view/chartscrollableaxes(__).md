---
title: chartScrollableAxes(_:)
description: Configures the scrollable behavior of charts in this view.
source: https://developer.apple.com/documentation/swiftui/view/chartscrollableaxes(_:)
timestamp: 2025-10-29T00:14:44.239Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# chartScrollableAxes(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Configures the scrollable behavior of charts in this view.

```swift
nonisolated func chartScrollableAxes(_ axes: Axis.Set) -> some View
```

## Parameters

**axes**

The set of axes to enable scrolling.



## Discussion

Use this method to make a chart scrollable. Below is an example that makes a chart scrollable along the horizontal axis.

```swift
Chart(data) {
    BarMark(
        x: .value("x", $0.x),
        y: .value("y", $0.y)
    )
}
.chartScrollableAxes(.horizontal)
```

> [!NOTE]
> When scrolling is enabled along an axis, a default portion of the chart will be made visible. You can use the `chartXVisibleDomain` or `chartYVisibleDomain` modifiers to configure the visible domain.

## Scrolling

- [chartScrollPosition(initialX:)](/documentation/swiftui/view/chartscrollposition(initialx:))
- [chartScrollPosition(initialY:)](/documentation/swiftui/view/chartscrollposition(initialy:))
- [chartScrollPosition(x:)](/documentation/swiftui/view/chartscrollposition(x:))
- [chartScrollPosition(y:)](/documentation/swiftui/view/chartscrollposition(y:))
- [chartScrollTargetBehavior(_:)](/documentation/swiftui/view/chartscrolltargetbehavior(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
