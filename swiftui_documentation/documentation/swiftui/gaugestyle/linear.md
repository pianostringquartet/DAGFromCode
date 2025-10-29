---
title: linear
description: A gauge style that displays a bar with a marker that appears at a point along the bar to indicate the gauge’s current value.
source: https://developer.apple.com/documentation/swiftui/gaugestyle/linear
timestamp: 2025-10-29T00:15:24.212Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gaugestyle](/documentation/swiftui/gaugestyle)

**Type Property**

# linear

**Available on:** watchOS 7.0+

> A gauge style that displays a bar with a marker that appears at a point along the bar to indicate the gauge’s current value.

```swift
@MainActor @preconcurrency static var linear: LinearGaugeStyle { get }
```

## Discussion

Apply this style to a [Gauge](/documentation/swiftui/gauge) or to a view hierarchy that contains gauges using the [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:)) modifier:

```swift
Gauge(value: batteryLevel, in: 0...100) {
    Text("Battery Level")
}
.gaugeStyle(.linear)
```

If you provide `minimumValueLabel` and `maximumValueLabel` parameters when you create the gauge, they appear on leading and trailing edges of the bar, respectively. Otherwise, the gauge displays the `currentValueLabel` value on the leading edge.

## Getting linear gauge styles

- [linearCapacity](/documentation/swiftui/gaugestyle/linearcapacity)
- [accessoryLinear](/documentation/swiftui/gaugestyle/accessorylinear)
- [accessoryLinearCapacity](/documentation/swiftui/gaugestyle/accessorylinearcapacity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
