---
title: init(onIncrement:onDecrement:onEditingChanged:label:)
description: Creates a stepper instance that performs the closures you provide when the user increments or decrements the stepper.
source: https://developer.apple.com/documentation/swiftui/stepper/init(onincrement:ondecrement:oneditingchanged:label:)
timestamp: 2025-10-29T00:09:26.897Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [stepper](/documentation/swiftui/stepper)

**Initializer**

# init(onIncrement:onDecrement:onEditingChanged:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 9.0+

> Creates a stepper instance that performs the closures you provide when the user increments or decrements the stepper.

```swift
nonisolated init(onIncrement: (() -> Void)?, onDecrement: (() -> Void)?, onEditingChanged: @escaping (Bool) -> Void = { _ in }, @ViewBuilder label: () -> Label)
```

## Parameters

**onIncrement**

The closure to execute when the user clicks or taps the control’s plus button.



**onDecrement**

The closure to execute when the user clicks or taps the control’s minus button.



**onEditingChanged**

A closure called when editing begins and ends. For example, on iOS, the user may touch and hold the increment or decrement buttons on a `Stepper` which causes the execution of the `onEditingChanged` closure at the start and end of the gesture.



**label**

A view describing the purpose of this stepper.



## Discussion

Use this initializer to create a control with a custom title that executes closures you provide when the user clicks or taps the stepper’s increment or decrement buttons.

The example below uses an array that holds a number of [Color](/documentation/swiftui/color) values, a local state variable, `value`, to set the control’s background color, and title label. When the user clicks or taps on the stepper’s increment or decrement buttons SwiftUI executes the relevant closure that updates `value`, wrapping the `value` to prevent overflow. SwiftUI then re-renders the view, updating the text and background color to match the current index:

```swift
struct StepperView: View {
    @State private var value = 0
    let colors: [Color] = [.orange, .red, .gray, .blue, .green,
                           .purple, .pink]

    func incrementStep() {
        value += 1
        if value >= colors.count { value = 0 }
    }

    func decrementStep() {
        value -= 1
        if value < 0 { value = colors.count - 1 }
    }

    var body: some View {
        Stepper(onIncrement: incrementStep,
            onDecrement: decrementStep) {
            Text("Value: \(value) Color: \(colors[value].description)")
        }
        .padding(5)
        .background(colors[value])
    }
```

}



## Deprecated initializers

- [init(value:step:onEditingChanged:label:)](/documentation/swiftui/stepper/init(value:step:oneditingchanged:label:))
- [init(value:in:step:onEditingChanged:label:)](/documentation/swiftui/stepper/init(value:in:step:oneditingchanged:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
