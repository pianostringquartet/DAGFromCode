---
title: init(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:)
description: Creates a gauge showing a value within a range and describes the gauge’s current, minimum, and maximum values.
source: https://developer.apple.com/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:minimumvaluelabel:maximumvaluelabel:)
timestamp: 2025-10-29T00:10:57.014Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gauge](/documentation/swiftui/gauge)

**Initializer**

# init(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 7.0+

> Creates a gauge showing a value within a range and describes the gauge’s current, minimum, and maximum values.

```swift
init<V>(value: V, in bounds: ClosedRange<V> = 0...1, @ViewBuilder label: () -> Label, @ViewBuilder currentValueLabel: () -> CurrentValueLabel, @ViewBuilder minimumValueLabel: () -> BoundsLabel, @ViewBuilder maximumValueLabel: () -> BoundsLabel) where MarkedValueLabels == EmptyView, V : BinaryFloatingPoint
```

## Parameters

**value**

The value to show on the gauge.



**bounds**

The range of the valid values. Defaults to `0...1`.



**label**

A view that describes the purpose of the gauge.



**currentValueLabel**

A view that describes the current value of the gauge.



**minimumValueLabel**

A view that describes the lower bounds of the gauge.



**maximumValueLabel**

A view that describes the upper bounds of the gauge.



## Discussion

Use this method to create a gauge that shows a value within a prescribed bounds. The gauge has labels that describe its purpose, and for the gauge’s current, minimum, and maximum values.

```swift
struct LabeledGauge: View {
    @State private var current = 67.0
    @State private var minValue = 0.0
    @State private var maxValue = 170.0

    var body: some View {
        Gauge(value: current, in: minValue...maxValue) {
            Text("BPM")
        } currentValueLabel: {
            Text("\(Int(current))")
        } minimumValueLabel: {
            Text("\(Int(minValue))")
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
        }
    }
}
```



## Creating a gauge

- [init(value:in:label:)](/documentation/swiftui/gauge/init(value:in:label:))
- [init(value:in:label:currentValueLabel:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:))
- [init(value:in:label:currentValueLabel:markedValueLabels:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:markedvaluelabels:))
- [init(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:markedValueLabels:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:minimumvaluelabel:maximumvaluelabel:markedvaluelabels:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
