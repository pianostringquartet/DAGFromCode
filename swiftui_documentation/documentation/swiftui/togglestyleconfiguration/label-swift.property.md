---
title: label
description: A view that describes the effect of switching the toggle between states.
source: https://developer.apple.com/documentation/swiftui/togglestyleconfiguration/label-swift.property
timestamp: 2025-10-29T00:14:58.577Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [togglestyleconfiguration](/documentation/swiftui/togglestyleconfiguration)

**Instance Property**

# label

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A view that describes the effect of switching the toggle between states.

```swift
let label: ToggleStyleConfiguration.Label
```

## Discussion

Use this value in your implementation of the [makeBody(configuration:)](/documentation/swiftui/togglestyle/makebody(configuration:)) method when defining a custom [Toggle Style](/documentation/swiftui/togglestyle). Access it through the that method’s `configuration` parameter.

Because the label is a [View](/documentation/swiftui/view), you can incorporate it into the view hierarchy that you return from your style definition. For example, you can combine the label with a circle image in an [HStack](/documentation/swiftui/hstack):

```swift
HStack {
    Image(systemName: configuration.isOn
        ? "checkmark.circle.fill"
        : "circle")
    configuration.label
}
```

## Getting the label view

- [ToggleStyleConfiguration.Label](/documentation/swiftui/togglestyleconfiguration/label-swift.struct)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
