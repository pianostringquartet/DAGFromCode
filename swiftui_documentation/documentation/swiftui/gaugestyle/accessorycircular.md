---
title: accessoryCircular
description: A gauge style that displays an open ring with a marker that appears at a point along the ring to indicate the gauge’s current value.
source: https://developer.apple.com/documentation/swiftui/gaugestyle/accessorycircular
timestamp: 2025-10-29T00:11:05.081Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gaugestyle](/documentation/swiftui/gaugestyle)

**Type Property**

# accessoryCircular

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> A gauge style that displays an open ring with a marker that appears at a point along the ring to indicate the gauge’s current value.

```swift
@MainActor @preconcurrency static var accessoryCircular: AccessoryCircularGaugeStyle { get }
```

## Discussion

Apply this style to a [Gauge](/documentation/swiftui/gauge) or to a view hierarchy that contains gauges using the [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:)) modifier:

```swift
Gauge(value: batteryLevel, in: 0...100) {
    Text("Battery Level")
}
.gaugeStyle(.accessoryCircular)
```

This style displays the gauge’s `currentValueLabel` value at the center of the gauge. If you provide `minimumValueLabel` and `maximumValueLabel` parameters when you create the gauge, they appear in the opening at the bottom of the ring. Otherwise, the gauge places its label in that location.

## Getting circular gauge styles

- [circular](/documentation/swiftui/gaugestyle/circular)
- [accessoryCircularCapacity](/documentation/swiftui/gaugestyle/accessorycircularcapacity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
