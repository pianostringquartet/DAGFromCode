---
title: init(value:in:neutralValue:enabledBounds:label:currentValueLabel:minimumValueLabel:maximumValueLabel:ticks:onEditingChanged:)
description: Creates a slider to select a value from a given range, which displays the provided labels and customized ticks.
source: https://developer.apple.com/documentation/swiftui/slider/init(value:in:neutralvalue:enabledbounds:label:currentvaluelabel:minimumvaluelabel:maximumvaluelabel:ticks:oneditingchanged:)
timestamp: 2025-10-29T00:12:06.565Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [slider](/documentation/swiftui/slider)

**Initializer**

# init(value:in:neutralValue:enabledBounds:label:currentValueLabel:minimumValueLabel:maximumValueLabel:ticks:onEditingChanged:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Creates a slider to select a value from a given range, which displays the provided labels and customized ticks.

```swift
nonisolated init<V>(value: Binding<V>, in bounds: ClosedRange<V> = 0...1, neutralValue: V? = nil, enabledBounds: ClosedRange<V>? = nil, @ViewBuilder label: () -> Label, @ViewBuilder currentValueLabel: () -> some View = { EmptyView() }, @ViewBuilder minimumValueLabel: () -> ValueLabel = { EmptyView() }, @ViewBuilder maximumValueLabel: () -> ValueLabel = { EmptyView() }, @SliderTickBuilder<V> ticks: () -> some SliderTickContent, onEditingChanged: @escaping (Bool) -> Void = { _ in }) where V.Stride : BinaryFloatingPoint
```

## Parameters

**value**

The selected value within `bounds`.



**bounds**

The range values. Defaults to `0...1`.



**neutralValue**

The value’s starting value.



**enabledBounds**

The range of selectable values.



**label**

A `View` that describes the purpose of the instance. Not all slider styles show the label, but even in those cases, SwiftUI uses the label for accessibility. For example, VoiceOver uses the label to identify the purpose of the slider.



**currentValueLabel**

A view that describes `value`.



**minimumValueLabel**

A view that describes `bounds.lowerBound`.



**maximumValueLabel**

A view that describes `bounds.lowerBound`.



**onEditingChanged**

A callback for when editing begins and ends.



## Discussion

The `value` of the created instance is equal to the position of the given value within `bounds`, mapped into `0...1`.

The slider calls `onEditingChanged` when editing begins and ends. For example, on iOS, editing begins when the user starts to drag the thumb along the slider’s track.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
