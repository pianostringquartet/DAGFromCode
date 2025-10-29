---
title: init(value:step:onEditingChanged:label:)
description: Creates a stepper configured to increment or decrement a binding to a value using a step value you provide.
source: https://developer.apple.com/documentation/swiftui/stepper/init(value:step:oneditingchanged:label:)
timestamp: 2025-10-29T00:10:12.846Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [stepper](/documentation/swiftui/stepper)

**Initializer**

# init(value:step:onEditingChanged:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 9.0+

> Creates a stepper configured to increment or decrement a binding to a value using a step value you provide.

```swift
nonisolated init<V>(value: Binding<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }, @ViewBuilder label: () -> Label) where V : Strideable
```

## Parameters

**value**

The [Binding](/documentation/swiftui/binding) to a value that you provide.



**step**

The amount to increment or decrement `value` each time the user clicks or taps the stepper’s increment or decrement buttons. Defaults to `1`.



**onEditingChanged**

A closure that’s called when editing begins and ends. For example, on iOS, the user may touch and hold the increment or decrement buttons on a stepper which causes the execution of the `onEditingChanged` closure at the start and end of the gesture.



**label**

A view describing the purpose of this stepper.



## Discussion

Use this initializer to create a stepper that increments or decrements a bound value by a specific amount each time the user clicks or taps the stepper’s increment or decrement buttons.

In the example below, a stepper increments or decrements `value` by the `step` value of 5 at each click or tap of the control’s increment or decrement button:

```swift
struct StepperView: View {
    @State private var value = 1
    let step = 5
    var body: some View {
        Stepper(value: $value,
                step: step) {
            Text("Current value: \(value), step: \(step)")
        }
            .padding(10)
    }
}
```



## Deprecated initializers

- [init(value:in:step:onEditingChanged:label:)](/documentation/swiftui/stepper/init(value:in:step:oneditingchanged:label:))
- [init(onIncrement:onDecrement:onEditingChanged:label:)](/documentation/swiftui/stepper/init(onincrement:ondecrement:oneditingchanged:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
