---
title: isOn
description: A binding to a state property that indicates whether the toggle is on.
source: https://developer.apple.com/documentation/swiftui/togglestyleconfiguration/ison
timestamp: 2025-10-29T00:10:25.053Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [togglestyleconfiguration](/documentation/swiftui/togglestyleconfiguration)

**Instance Property**

# isOn

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A binding to a state property that indicates whether the toggle is on.

```swift
@Binding var isOn: Bool { get nonmutating set }
```

## Discussion

Because this value is a [Binding](/documentation/swiftui/binding), you can both read and write it in your implementation of the [makeBody(configuration:)](/documentation/swiftui/togglestyle/makebody(configuration:)) method when defining a custom [Toggle Style](/documentation/swiftui/togglestyle). Access it through that method’s `configuration` parameter.

Read this value to set the appearance of the toggle. For example, you can choose between empty and filled circles based on the `isOn` value:

```swift
Image(systemName: configuration.isOn
    ? "checkmark.circle.fill"
    : "circle")
```

Write this value when the user takes an action that’s meant to change the state of the toggle. For example, you can toggle it inside the `action` closure of a [Button](/documentation/swiftui/button) instance:

```swift
Button {
    configuration.isOn.toggle()
} label: {
    // Draw the toggle.
}
```

## Managing the toggle state

- [isMixed](/documentation/swiftui/togglestyleconfiguration/ismixed)
- [$isOn](/documentation/swiftui/togglestyleconfiguration/$ison)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
