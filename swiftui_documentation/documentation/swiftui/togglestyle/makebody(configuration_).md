---
title: makeBody(configuration:)
description: Creates a view that represents the body of a toggle.
source: https://developer.apple.com/documentation/swiftui/togglestyle/makebody(configuration:)
timestamp: 2025-10-29T00:13:24.823Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [togglestyle](/documentation/swiftui/togglestyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a view that represents the body of a toggle.

```swift
@ViewBuilder @MainActor @preconcurrency func makeBody(configuration: Self.Configuration) -> Self.Body
```

## Parameters

**configuration**

The properties of the toggle, including a label and a binding to the toggle’s state.



## Return Value

A view that has behavior and appearance that enables it to function as a [Toggle](/documentation/swiftui/toggle).

## Discussion

Implement this method when you define a custom toggle style that conforms to the [Toggle Style](/documentation/swiftui/togglestyle) protocol. Use the `configuration` input — a [Toggle Style Configuration](/documentation/swiftui/togglestyleconfiguration) instance — to access the toggle’s label and state. Return a view that has the appearance and behavior of a toggle. For example you can create a toggle that displays a label and a circle that’s either empty or filled with a checkmark:

```swift
struct ChecklistToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            HStack {
                Image(systemName: configuration.isOn
                        ? "checkmark.circle.fill"
                        : "circle")
                configuration.label
            }
        }
        .tint(.primary)
        .buttonStyle(.borderless)
    }
}
```

The `ChecklistToggleStyle` toggle style provides a way to both observe and modify the toggle state: the circle fills for the on state, and users can tap or click the toggle to change the state. By using a customized [Button](/documentation/swiftui/button) to compose the toggle’s body, SwiftUI automatically provides the behaviors that users expect from a control that has button-like characteristics.

You can present a collection of toggles that use this style in a stack:



When updating a view hierarchy, the system calls your implementation of the `makeBody(configuration:)` method for each [Toggle](/documentation/swiftui/toggle) instance that uses the associated style.

### Modify the current style

Rather than create an entirely new style, you can alternatively modify a toggle’s current style. Use the [init(_:)](/documentation/swiftui/toggle/init(_:)) initializer inside the `makeBody(configuration:)` method to create and modify a toggle based on a `configuration` value. For example, you can create a style that adds padding and a red border to the current style:

```swift
struct RedBorderToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Toggle(configuration)
            .padding()
            .border(.red)
    }
}
```

If you create a `redBorder` static variable from this style, you can apply the style to toggles that already use another style, like the built-in [switch](/documentation/swiftui/togglestyle/switch) and [button](/documentation/swiftui/togglestyle/button) styles:

```swift
Toggle("Switch", isOn: $isSwitchOn)
    .toggleStyle(.redBorder)
    .toggleStyle(.switch)

Toggle("Button", isOn: $isButtonOn)
    .toggleStyle(.redBorder)
    .toggleStyle(.button)
```

Both toggles appear with the usual styling, each with a red border:



Apply the custom style closer to the toggle than the modified style because SwiftUI evaluates style view modifiers in order from outermost to innermost. If you apply the styles in the other order, the red border style doesn’t have an effect, because the built-in styles override it completely.

## Creating custom toggle styles

- [ToggleStyleConfiguration](/documentation/swiftui/togglestyleconfiguration)
- [ToggleStyle.Configuration](/documentation/swiftui/togglestyle/configuration)
- [Body](/documentation/swiftui/togglestyle/body)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
