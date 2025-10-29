---
title: init(value:in:step:onEditingChanged:label:)
description: Creates a stepper configured to increment or decrement a binding to a value using a step value and within a range of values you provide.
source: https://developer.apple.com/documentation/swiftui/stepper/init(value:in:step:oneditingchanged:label:)
timestamp: 2025-10-29T00:12:00.036Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [stepper](/documentation/swiftui/stepper)

**Initializer**

# init(value:in:step:onEditingChanged:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 9.0+

> Creates a stepper configured to increment or decrement a binding to a value using a step value and within a range of values you provide.

```swift
nonisolated init<V>(value: Binding<V>, in bounds: ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }, @ViewBuilder label: () -> Label) where V : Strideable
```

## Parameters

**value**

A [Binding](/documentation/swiftui/binding) to a value that you provide.



**bounds**

A closed range that describes the upper and lower bounds permitted by the stepper.



**step**

The amount to increment or decrement the stepper when the user clicks or taps the stepper’s increment or decrement buttons, respectively.



**onEditingChanged**

A closure that’s called when editing begins and ends. For example, on iOS, the user may touch and hold the increment or decrement buttons on a stepper which causes the execution of the `onEditingChanged` closure at the start and end of the gesture.



**label**

A view describing the purpose of this stepper.



## Discussion

Use this initializer to create a stepper that increments or decrements a binding to value by the step size you provide within the given bounds. By setting the bounds, you ensure that the value never goes below or above the lowest or highest value, respectively.

The example below shows a stepper that displays the effect of incrementing or decrementing a value with the step size of `step` with the bounds defined by `range`:

```swift
struct StepperView: View {
    @State private var value = 0
    let step = 5
    let range = 1...50

    var body: some View {
        Stepper(value: $value,
                in: range,
                step: step) {
            Text("Current: \(value) in \(range.description) " +
                 "stepping by \(step)")
        }
            .padding(10)
    }
}
```



## Deprecated initializers

- [init(value:step:onEditingChanged:label:)](/documentation/swiftui/stepper/init(value:step:oneditingchanged:label:))
- [init(onIncrement:onDecrement:onEditingChanged:label:)](/documentation/swiftui/stepper/init(onincrement:ondecrement:oneditingchanged:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
