---
title: init(value:in:label:minimumValueLabel:maximumValueLabel:onEditingChanged:)
description: Creates a slider to select a value from a given range, which displays the provided labels.
source: https://developer.apple.com/documentation/swiftui/slider/init(value:in:label:minimumvaluelabel:maximumvaluelabel:oneditingchanged:)
timestamp: 2025-10-29T00:12:48.414Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [slider](/documentation/swiftui/slider)

**Initializer**

# init(value:in:label:minimumValueLabel:maximumValueLabel:onEditingChanged:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 6.0+

> Creates a slider to select a value from a given range, which displays the provided labels.

```swift
nonisolated init<V>(value: Binding<V>, in bounds: ClosedRange<V> = 0...1, @ViewBuilder label: () -> Label, @ViewBuilder minimumValueLabel: () -> ValueLabel, @ViewBuilder maximumValueLabel: () -> ValueLabel, onEditingChanged: @escaping (Bool) -> Void = { _ in }) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
```

## Parameters

**value**

The selected value within `bounds`.



**bounds**

The range of the valid values. Defaults to `0...1`.



**label**

A `View` that describes the purpose of the instance. Not all slider styles show the label, but even in those cases, SwiftUI uses the label for accessibility. For example, VoiceOver uses the label to identify the purpose of the slider.



**minimumValueLabel**

A view that describes `bounds.lowerBound`.



**maximumValueLabel**

A view that describes `bounds.upperBound`.



**onEditingChanged**

A callback for when editing begins and ends.



## Discussion

The `value` of the created instance is equal to the position of the given value within `bounds`, mapped into `0...1`.

The slider calls `onEditingChanged` when editing begins and ends. For example, on iOS, editing begins when the user starts to drag the thumb along the slider’s track.

## Creating a slider with labels

- [init(value:in:label:onEditingChanged:)](/documentation/swiftui/slider/init(value:in:label:oneditingchanged:))
- [init(value:in:step:label:onEditingChanged:)](/documentation/swiftui/slider/init(value:in:step:label:oneditingchanged:))
- [init(value:in:step:label:minimumValueLabel:maximumValueLabel:onEditingChanged:)](/documentation/swiftui/slider/init(value:in:step:label:minimumvaluelabel:maximumvaluelabel:oneditingchanged:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
