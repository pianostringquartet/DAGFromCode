---
title: accessoryLinear
description: A gauge style that displays bar with a marker that appears at a point along the bar to indicate the gauge’s current value.
source: https://developer.apple.com/documentation/swiftui/gaugestyle/accessorylinear
timestamp: 2025-10-29T00:11:30.573Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gaugestyle](/documentation/swiftui/gaugestyle)

**Type Property**

# accessoryLinear

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> A gauge style that displays bar with a marker that appears at a point along the bar to indicate the gauge’s current value.

```swift
@MainActor @preconcurrency static var accessoryLinear: AccessoryLinearGaugeStyle { get }
```

## Discussion

Apply this style to a [Gauge](/documentation/swiftui/gauge) or to a view hierarchy that contains gauges using the [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:)) modifier:

```swift
Gauge(value: batteryLevel, in: 0...100) {
    Text("Battery Level")
}
.gaugeStyle(.accessoryLinear)
```

If you provide `minimumValueLabel` and `maximumValueLabel` parameters when you create the gauge, they appear on leading and trailing edges of the bar, respectively. Otherwise, the gauge displays the `currentValueLabel` value on the leading edge.

## Getting linear gauge styles

- [linear](/documentation/swiftui/gaugestyle/linear)
- [linearCapacity](/documentation/swiftui/gaugestyle/linearcapacity)
- [accessoryLinearCapacity](/documentation/swiftui/gaugestyle/accessorylinearcapacity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
