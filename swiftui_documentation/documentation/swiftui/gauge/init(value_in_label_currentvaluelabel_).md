---
title: init(value:in:label:currentValueLabel:)
description: Creates a gauge showing a value within a range and that describes the gauge’s purpose and current value.
source: https://developer.apple.com/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:)
timestamp: 2025-10-29T00:13:43.178Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gauge](/documentation/swiftui/gauge)

**Initializer**

# init(value:in:label:currentValueLabel:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 7.0+

> Creates a gauge showing a value within a range and that describes the gauge’s purpose and current value.

```swift
init<V>(value: V, in bounds: ClosedRange<V> = 0...1, @ViewBuilder label: () -> Label, @ViewBuilder currentValueLabel: () -> CurrentValueLabel) where BoundsLabel == EmptyView, MarkedValueLabels == EmptyView, V : BinaryFloatingPoint
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



## Discussion

Use this method to create a gauge that displays a value within a range you supply with labels that describe the purpose of the gauge and its current value. In the example below, a gauge using the [circular](/documentation/swiftui/gaugestyle/circular) style shows its current value of `67` along with a label describing the (BPM) for the gauge:

```swift
struct SimpleGauge: View {
    @State private var current = 67.0

    var body: some View {
        Gauge(value: currrent, in: 0...170) {
            Text("BPM")
        } currentValueLabel: {
            Text("\(current)")
        }
        .gaugeStyle(.circular)
   }
}
```



## Creating a gauge

- [init(value:in:label:)](/documentation/swiftui/gauge/init(value:in:label:))
- [init(value:in:label:currentValueLabel:markedValueLabels:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:markedvaluelabels:))
- [init(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:minimumvaluelabel:maximumvaluelabel:))
- [init(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:markedValueLabels:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:minimumvaluelabel:maximumvaluelabel:markedvaluelabels:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
