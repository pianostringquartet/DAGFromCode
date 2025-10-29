---
title: circular
description: A gauge style that displays an open ring with a marker that appears at a point along the ring to indicate the gauge’s current value.
source: https://developer.apple.com/documentation/swiftui/gaugestyle/circular
timestamp: 2025-10-29T00:10:46.004Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gaugestyle](/documentation/swiftui/gaugestyle)

**Type Property**

# circular

**Available on:** watchOS 7.0+

> A gauge style that displays an open ring with a marker that appears at a point along the ring to indicate the gauge’s current value.

```swift
@MainActor @preconcurrency static var circular: CircularGaugeStyle { get }
```

## Discussion

Apply this style to a [Gauge](/documentation/swiftui/gauge) or to a view hierarchy that contains gauges using the [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:)) modifier:

```swift
Gauge(value: batteryLevel, in: 0...100) {
    Text("Battery Level")
}
.gaugeStyle(.circular)
```

This style displays the gauge’s `currentValueLabel` value at the center of the gauge. If you provide `minimumValueLabel` and `maximumValueLabel` parameters when you create the gauge, they appear in the opening at the bottom of the ring. Otherwise, the gauge places its label in that location.

## Getting circular gauge styles

- [accessoryCircular](/documentation/swiftui/gaugestyle/accessorycircular)
- [accessoryCircularCapacity](/documentation/swiftui/gaugestyle/accessorycircularcapacity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
