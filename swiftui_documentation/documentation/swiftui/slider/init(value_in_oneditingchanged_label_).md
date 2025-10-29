---
title: init(value:in:onEditingChanged:label:)
description: Creates a slider to select a value from a given range, which displays the provided label.
source: https://developer.apple.com/documentation/swiftui/slider/init(value:in:oneditingchanged:label:)
timestamp: 2025-10-29T00:13:06.754Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [slider](/documentation/swiftui/slider)

**Initializer**

# init(value:in:onEditingChanged:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 6.0+

> Creates a slider to select a value from a given range, which displays the provided label.

```swift
nonisolated init<V>(value: Binding<V>, in bounds: ClosedRange<V> = 0...1, onEditingChanged: @escaping (Bool) -> Void = { _ in }, @ViewBuilder label: () -> Label) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
```

## Parameters

**value**

The selected value within `bounds`.



**bounds**

The range of the valid values. Defaults to `0...1`.



**onEditingChanged**

A callback for when editing begins and ends.



**label**

A `View` that describes the purpose of the instance. Not all slider styles show the label, but even in those cases, SwiftUI uses the label for accessibility. For example, VoiceOver uses the label to identify the purpose of the slider.



## Discussion

The `value` of the created instance is equal to the position of the given value within `bounds`, mapped into `0...1`.

The slider calls `onEditingChanged` when editing begins and ends. For example, on iOS, editing begins when the user starts to drag the thumb along the slider’s track.

## Deprecated initializers

- [init(value:in:step:onEditingChanged:label:)](/documentation/swiftui/slider/init(value:in:step:oneditingchanged:label:))
- [init(value:in:onEditingChanged:minimumValueLabel:maximumValueLabel:label:)](/documentation/swiftui/slider/init(value:in:oneditingchanged:minimumvaluelabel:maximumvaluelabel:label:))
- [init(value:in:step:onEditingChanged:minimumValueLabel:maximumValueLabel:label:)](/documentation/swiftui/slider/init(value:in:step:oneditingchanged:minimumvaluelabel:maximumvaluelabel:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
