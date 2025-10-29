---
title: init(value:in:label:)
description: Creates a gauge showing a value within a range and describes the gauge’s purpose and current value.
source: https://developer.apple.com/documentation/swiftui/gauge/init(value:in:label:)
timestamp: 2025-10-29T00:13:10.208Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gauge](/documentation/swiftui/gauge)

**Initializer**

# init(value:in:label:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 7.0+

> Creates a gauge showing a value within a range and describes the gauge’s purpose and current value.

```swift
init<V>(value: V, in bounds: ClosedRange<V> = 0...1, @ViewBuilder label: () -> Label) where CurrentValueLabel == EmptyView, BoundsLabel == EmptyView, MarkedValueLabels == EmptyView, V : BinaryFloatingPoint
```

## Parameters

**value**

The value to show in the gauge.



**bounds**

The range of the valid values. Defaults to `0...1`.



**label**

A view that describes the purpose of the gauge.



## Discussion

Use this modifier to create a gauge that shows the value at its relative position along the gauge and a label describing the gauge’s purpose. In the example below, the gauge has a range of `0...1`, the indicator is set to `0.4`, or 40 percent of the distance along the gauge:

```swift
struct SimpleGauge: View {
    @State private var batteryLevel = 0.4

    var body: some View {
        Gauge(value: batteryLevel) {
            Text("Battery Level")
        }
    }
}
```



## Creating a gauge

- [init(value:in:label:currentValueLabel:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:))
- [init(value:in:label:currentValueLabel:markedValueLabels:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:markedvaluelabels:))
- [init(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:minimumvaluelabel:maximumvaluelabel:))
- [init(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:markedValueLabels:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:minimumvaluelabel:maximumvaluelabel:markedvaluelabels:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
