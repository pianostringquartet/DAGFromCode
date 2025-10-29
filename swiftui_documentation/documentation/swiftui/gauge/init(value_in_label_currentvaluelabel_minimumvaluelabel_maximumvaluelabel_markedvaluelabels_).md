---
title: init(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:markedValueLabels:)
description: Creates a gauge representing a value within a range.
source: https://developer.apple.com/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:minimumvaluelabel:maximumvaluelabel:markedvaluelabels:)
timestamp: 2025-10-29T00:11:02.758Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gauge](/documentation/swiftui/gauge)

**Initializer**

# init(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:markedValueLabels:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 7.0+

> Creates a gauge representing a value within a range.

```swift
init<V>(value: V, in bounds: ClosedRange<V> = 0...1, @ViewBuilder label: () -> Label, @ViewBuilder currentValueLabel: () -> CurrentValueLabel, @ViewBuilder minimumValueLabel: () -> BoundsLabel, @ViewBuilder maximumValueLabel: () -> BoundsLabel, @ViewBuilder markedValueLabels: () -> MarkedValueLabels) where V : BinaryFloatingPoint
```

## Parameters

**value**

The value to show in the gauge.



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



**markedValueLabels**

A view builder containing tagged views. each of which describes a particular value of the gauge. The method ignores this parameter.



## Creating a gauge

- [init(value:in:label:)](/documentation/swiftui/gauge/init(value:in:label:))
- [init(value:in:label:currentValueLabel:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:))
- [init(value:in:label:currentValueLabel:markedValueLabels:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:markedvaluelabels:))
- [init(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:)](/documentation/swiftui/gauge/init(value:in:label:currentvaluelabel:minimumvaluelabel:maximumvaluelabel:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
