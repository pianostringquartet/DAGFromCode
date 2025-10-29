---
title: accessoryLinearCapacity
description: A gauge style that displays bar that fills from leading to trailing edges as the gauge’s current value increases.
source: https://developer.apple.com/documentation/swiftui/gaugestyle/accessorylinearcapacity
timestamp: 2025-10-29T00:11:33.644Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gaugestyle](/documentation/swiftui/gaugestyle)

**Type Property**

# accessoryLinearCapacity

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> A gauge style that displays bar that fills from leading to trailing edges as the gauge’s current value increases.

```swift
@MainActor @preconcurrency static var accessoryLinearCapacity: AccessoryLinearCapacityGaugeStyle { get }
```

## Discussion

Apply this style to a [Gauge](/documentation/swiftui/gauge) or to a view hierarchy that contains gauges using the [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:)) modifier:

```swift
Gauge(value: batteryLevel, in: 0...100) {
    Text("Battery Level")
}
.gaugeStyle(.accessoryLinearCapacity)
```

If you provide `minimumValueLabel` and `maximumValueLabel` parameters when you create the gauge, they appear on leading and trailing edges of the bar, respectively. The `label` appears above the gauge, and the `currentValueLabel` appears below.

## Getting linear gauge styles

- [linear](/documentation/swiftui/gaugestyle/linear)
- [linearCapacity](/documentation/swiftui/gaugestyle/linearcapacity)
- [accessoryLinear](/documentation/swiftui/gaugestyle/accessorylinear)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
