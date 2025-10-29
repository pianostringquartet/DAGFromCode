---
title: init(value:in:step:onEditingChanged:)
description: Creates a slider to select a value from a given range, subject to a step increment.
source: https://developer.apple.com/documentation/swiftui/slider/init(value:in:step:oneditingchanged:)
timestamp: 2025-10-29T00:13:54.697Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [slider](/documentation/swiftui/slider)

**Initializer**

# init(value:in:step:onEditingChanged:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 6.0+

> Creates a slider to select a value from a given range, subject to a step increment.

```swift
nonisolated init<V>(value: Binding<V>, in bounds: ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
```

## Parameters

**value**

The selected value within `bounds`.



**bounds**

The range of the valid values.



**step**

The distance between each valid value.



**onEditingChanged**

A callback for when editing begins and ends.



## Discussion

The `value` of the created instance is equal to the position of the given value within `bounds`, mapped into `0...1`.

The slider calls `onEditingChanged` when editing begins and ends. For example, on iOS, editing begins when the user starts to drag the thumb along the slider’s track.

## Creating a slider

- [init(value:in:onEditingChanged:)](/documentation/swiftui/slider/init(value:in:oneditingchanged:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
