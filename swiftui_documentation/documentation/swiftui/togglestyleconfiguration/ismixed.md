---
title: isMixed
description: Whether the  is currently in a mixed state.
source: https://developer.apple.com/documentation/swiftui/togglestyleconfiguration/ismixed
timestamp: 2025-10-29T00:11:49.907Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [togglestyleconfiguration](/documentation/swiftui/togglestyleconfiguration)

**Instance Property**

# isMixed

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Whether the  is currently in a mixed state.

```swift
var isMixed: Bool
```

## Discussion

Use this property to determine whether the toggle style should render a mixed state presentation. A mixed state corresponds to an underlying collection with a mix of true and false Bindings. To toggle the state, use the `Bool.toggle()` method on the [is On](/documentation/swiftui/togglestyleconfiguration/ison) binding.

In the following example, a custom style uses the `isMixed` property to render the correct toggle state using symbols:

```swift
struct SymbolToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Image(
                systemName: configuration.isMixed
                ? "minus.circle.fill" : configuration.isOn
                ? "checkmark.circle.fill" : "circle.fill")
            configuration.label
        }
    }
}
```

## Managing the toggle state

- [isOn](/documentation/swiftui/togglestyleconfiguration/ison)
- [$isOn](/documentation/swiftui/togglestyleconfiguration/$ison)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
