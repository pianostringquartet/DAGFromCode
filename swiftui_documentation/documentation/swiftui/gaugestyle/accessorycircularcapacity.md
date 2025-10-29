---
title: accessoryCircularCapacity
description: A gauge style that displays a closed ring that’s partially filled in to indicate the gauge’s current value.
source: https://developer.apple.com/documentation/swiftui/gaugestyle/accessorycircularcapacity
timestamp: 2025-10-29T00:14:21.241Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gaugestyle](/documentation/swiftui/gaugestyle)

**Type Property**

# accessoryCircularCapacity

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> A gauge style that displays a closed ring that’s partially filled in to indicate the gauge’s current value.

```swift
@MainActor @preconcurrency static var accessoryCircularCapacity: AccessoryCircularCapacityGaugeStyle { get }
```

## Discussion

Apply this style to a [Gauge](/documentation/swiftui/gauge) or to a view hierarchy that contains gauges using the [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:)) modifier:

```swift
Gauge(value: batteryLevel, in: 0...100) {
    Text("Battery Level")
}
.gaugeStyle(.accessoryCircularCapacity)
```

This style displays the gauge’s `currentValueLabel` value at the center of the gauge.

## Getting circular gauge styles

- [circular](/documentation/swiftui/gaugestyle/circular)
- [accessoryCircular](/documentation/swiftui/gaugestyle/accessorycircular)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
