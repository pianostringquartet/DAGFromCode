---
title: Gauge
description: A view that shows a value within a range.
source: https://developer.apple.com/documentation/swiftui/gauge
timestamp: 2025-10-29T00:13:00.687Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Gauge

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 7.0+

> A view that shows a value within a range.

```swift
struct Gauge<Label, CurrentValueLabel, BoundsLabel, MarkedValueLabels> where Label : View, CurrentValueLabel : View, BoundsLabel : View, MarkedValueLabels : View
```

## Overview

A gauge is a view that shows a current level of a value in relation to a specified finite capacity, very much like a fuel gauge in an automobile. Gauge displays are configurable; they can show any combination of the gauge’s current value, the range the gauge can display, and a label describing the purpose of the gauge itself.

In its most basic form, a gauge displays a single value along the path of the gauge mapped into a range from 0 to 100 percent. The example below sets the gauge’s indicator to a position 40 percent along the gauge’s path:

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



You can make a gauge more descriptive by describing its purpose, showing its current value and its start and end values. This example shows the gauge variant that accepts a range and adds labels using multiple trailing closures describing the current value and the minimum and maximum values of the gauge:

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



As shown above, the default style for gauges is a linear, continuous bar with an indicator showing the current value, and optional labels describing the gauge’s purpose, current, minimum, and maximum values.

> [!NOTE]
> Some visual presentations of `Gauge` don’t display all the labels required by the API. However, the accessibility system does use the label content and you should use these labels to fully describe the gauge for accessibility users.

To change the style of a gauge, use the [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:)) view modifier and supply an initializer for a specific gauge style. For example, to display the same gauge in a circular style, apply the [circular](/documentation/swiftui/gaugestyle/circular) style to the view:

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
        .gaugeStyle(.circular)
    }
}
```



To style elements of a gauge’s presentation, you apply view modifiers to the elements that you want to change. In the example below, the current value, minimum and maximum value labels have custom colors:

```swift
struct StyledGauge: View {
    @State private var current = 67.0
    @State private var minValue = 50.0
    @State private var maxValue = 170.0

    var body: some View {
        Gauge(value: current, in: minValue...maxValue) {
            Image(systemName: "heart.fill")
                .foregroundColor(.red)
        } currentValueLabel: {
            Text("\(Int(current))")
                .foregroundColor(Color.green)
        } minimumValueLabel: {
            Text("\(Int(minValue))")
                .foregroundColor(Color.green)
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
                .foregroundColor(Color.red)
        }
        .gaugeStyle(.circular)
    }
}
```



You can further style a gauge’s appearance by supplying a tint color or a gradient to the style’s initializer. The following example shows the effect of a gradient in the initialization of a [Circular Gauge Style](/documentation/swiftui/circulargaugestyle) gauge with a colorful gradient across the length of the gauge:

```swift
struct StyledGauge: View {
    @State private var current = 67.0
    @State private var minValue = 50.0
    @State private var maxValue = 170.0
    let gradient = Gradient(colors: [.green, .yellow, .orange, .red])

    var body: some View {
        Gauge(value: current, in: minValue...maxValue) {
            Image(systemName: "heart.fill")
                .foregroundColor(.red)
        } currentValueLabel: {
            Text("\(Int(current))")
                .foregroundColor(Color.green)
        } minimumValueLabel: {
            Text("\(Int(minValue))")
                .foregroundColor(Color.green)
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
                .foregroundColor(Color.red)
        }
        .gaugeStyle(CircularGaugeStyle(tint: gradient))
    }
}
```



## Conforms To

- [View](/documentation/swiftui/view)

## Creating a gauge

- [init(value:in:label:)](/documentation/swiftui/gauge/init(value:in:label:)) Creates a gauge showing a value within a range and describes the gauge’s purpose and current value.
- [init(value:in:label:currentValueLabel:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:)) Creates a gauge showing a value within a range and that describes the gauge’s purpose and current value.
- [init(value:in:label:currentValueLabel:markedValueLabels:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:markedvaluelabels:)) Creates a gauge representing a value within a range.
- [init(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:minimumvaluelabel:maximumvaluelabel:)) Creates a gauge showing a value within a range and describes the gauge’s current, minimum, and maximum values.
- [init(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:markedValueLabels:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:minimumvaluelabel:maximumvaluelabel:markedvaluelabels:)) Creates a gauge representing a value within a range.

## Indicating a value

- [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:))
- [ProgressView](/documentation/swiftui/progressview)
- [progressViewStyle(_:)](/documentation/swiftui/view/progressviewstyle(_:))
- [DefaultDateProgressLabel](/documentation/swiftui/defaultdateprogresslabel)
- [DefaultButtonLabel](/documentation/swiftui/defaultbuttonlabel)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
