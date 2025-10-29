---
title: init(_:value:step:onEditingChanged:)
description: Creates a stepper with a title and configured to increment and decrement a binding to a value and step amount you provide.
source: https://developer.apple.com/documentation/swiftui/stepper/init(_:value:step:oneditingchanged:)
timestamp: 2025-10-29T00:11:55.909Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [stepper](/documentation/swiftui/stepper)

**Initializer**

# init(_:value:step:onEditingChanged:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 9.0+

> Creates a stepper with a title and configured to increment and decrement a binding to a value and step amount you provide.

```swift
nonisolated init<S, V>(_ title: S, value: Binding<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }) where S : StringProtocol, V : Strideable
```

## Parameters

**title**

A string describing the purpose of the stepper.



**value**

The [Binding](/documentation/swiftui/binding) to a value that you provide.



**step**

The amount to increment or decrement `value` each time the user clicks or taps the stepper’s increment or decrement button, respectively. Defaults to `1`.



**onEditingChanged**

A closure that’s called when editing begins and ends. For example, on iOS, the user may touch and hold the increment or decrement buttons on a `Stepper` which causes the execution of the `onEditingChanged` closure at the start and end of the gesture.



## Discussion

Use `Stepper(_:value:step:onEditingChanged:)` to create a stepper with a custom title that increments or decrements a binding to value by the step size you specify.

In the example below, the stepper increments or decrements the binding value by `5` each time one of the user clicks or taps the control’s increment or decrement buttons:

```swift
struct StepperView: View {
    @State private var value = 1
    let step = 5
    let title: String

    var body: some View {
        Stepper(title, value: $value, step: step)
            .padding(10)
    }
}
```



## Creating a stepper

- [init(value:step:label:onEditingChanged:)](/documentation/swiftui/stepper/init(value:step:label:oneditingchanged:))
- [init(value:step:format:label:onEditingChanged:)](/documentation/swiftui/stepper/init(value:step:format:label:oneditingchanged:))
- [init(_:value:step:format:onEditingChanged:)](/documentation/swiftui/stepper/init(_:value:step:format:oneditingchanged:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
