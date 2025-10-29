---
title: ToggleStyleConfiguration
description: The properties of a toggle instance.
source: https://developer.apple.com/documentation/swiftui/togglestyleconfiguration
timestamp: 2025-10-29T00:12:13.091Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ToggleStyleConfiguration

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The properties of a toggle instance.

```swift
struct ToggleStyleConfiguration
```

## Overview

When you define a custom toggle style by creating a type that conforms to the [Toggle Style](/documentation/swiftui/togglestyle) protocol, you implement the [makeBody(configuration:)](/documentation/swiftui/togglestyle/makebody(configuration:)) method. That method takes a `ToggleStyleConfiguration` input that has the information you need to define the behavior and appearance of a [Toggle](/documentation/swiftui/toggle).

The configuration structure’s [label-swift.property](/documentation/swiftui/togglestyleconfiguration/label-swift.property) reflects the toggle’s content, which might be the value that you supply to the `label` parameter of the [init(isOn:label:)](/documentation/swiftui/toggle/init(ison:label:)) initializer. Alternatively, it could be another view that SwiftUI builds from an initializer that takes a string input, like [init(_:isOn:)](/documentation/swiftui/toggle/init(_:ison:)). In either case, incorporate the label into the toggle’s view to help the user understand what the toggle does. For example, the built-in [switch](/documentation/swiftui/togglestyle/switch) style horizontally stacks the label with the control element.

The structure’s [is On](/documentation/swiftui/togglestyleconfiguration/ison) property provides a [Binding](/documentation/swiftui/binding) to the state of the toggle. Adjust the appearance of the toggle based on this value. For example, the built-in [button](/documentation/swiftui/togglestyle/button) style fills the button’s background when the property is `true`, but leaves the background empty when the property is `false`. Change the value when the user performs an action that’s meant to change the toggle, like the button does when tapped or clicked by the user.

## Getting the label view

- [label](/documentation/swiftui/togglestyleconfiguration/label-swift.property) A view that describes the effect of switching the toggle between states.
- [ToggleStyleConfiguration.Label](/documentation/swiftui/togglestyleconfiguration/label-swift.struct) A type-erased label of a toggle.

## Managing the toggle state

- [isMixed](/documentation/swiftui/togglestyleconfiguration/ismixed) Whether the  is currently in a mixed state.
- [isOn](/documentation/swiftui/togglestyleconfiguration/ison) A binding to a state property that indicates whether the toggle is on.
- [$isOn](/documentation/swiftui/togglestyleconfiguration/$ison)

## Styling toggles

- [toggleStyle(_:)](/documentation/swiftui/view/togglestyle(_:))
- [ToggleStyle](/documentation/swiftui/togglestyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
