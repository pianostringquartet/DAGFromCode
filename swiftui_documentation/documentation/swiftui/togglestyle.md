---
title: ToggleStyle
description: The appearance and behavior of a toggle.
source: https://developer.apple.com/documentation/swiftui/togglestyle
timestamp: 2025-10-29T00:10:26.377Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ToggleStyle

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The appearance and behavior of a toggle.

```swift
@MainActor @preconcurrency protocol ToggleStyle
```

## Overview

To configure the style for a single [Toggle](/documentation/swiftui/toggle) or for all toggle instances in a view hierarchy, use the [toggleStyle(_:)](/documentation/swiftui/view/togglestyle(_:)) modifier. You can specify one of the built-in toggle styles, like [switch](/documentation/swiftui/togglestyle/switch) or [button](/documentation/swiftui/togglestyle/button):

```swift
Toggle(isOn: $isFlagged) {
    Label("Flag", systemImage: "flag.fill")
}
.toggleStyle(.button)
```

Alternatively, you can create and apply a custom style.

### Custom styles

To create a custom style, declare a type that conforms to the `ToggleStyle` protocol and implement the required [makeBody(configuration:)](/documentation/swiftui/togglestyle/makebody(configuration:)) method. For example, you can define a checklist toggle style:

```swift
struct ChecklistToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // Return a view that has checklist appearance and behavior.
    }
}
```

Inside the method, use the `configuration` parameter, which is an instance of the [Toggle Style Configuration](/documentation/swiftui/togglestyleconfiguration) structure, to get the label and a binding to the toggle state. To see examples of how to use these items to construct a view that has the appearance and behavior of a toggle, see [makeBody(configuration:)](/documentation/swiftui/togglestyle/makebody(configuration:)).

To provide easy access to the new style, declare a corresponding static variable in an extension to `ToggleStyle`:

```swift
extension ToggleStyle where Self == ChecklistToggleStyle {
    static var checklist: ChecklistToggleStyle { .init() }
}
```

You can then use your custom style:

```swift
Toggle(activity.name, isOn: $activity.isComplete)
    .toggleStyle(.checklist)
```

A type conforming to this protocol inherits `@preconcurrency @MainActor` isolation from the protocol if the conformance is included in the type’s base declaration:

```swift
struct MyCustomType: Transition {
    // `@preconcurrency @MainActor` isolation by default
}
```

Isolation to the main actor is the default, but it’s not required. Declare the conformance in an extension to opt out of main actor isolation:

```swift
extension MyCustomType: Transition {
    // `nonisolated` by default
}
```

## Conforming Types

- [ButtonToggleStyle](/documentation/swiftui/buttontogglestyle)
- [CheckboxToggleStyle](/documentation/swiftui/checkboxtogglestyle)
- [DefaultToggleStyle](/documentation/swiftui/defaulttogglestyle)
- [SwitchToggleStyle](/documentation/swiftui/switchtogglestyle)

## Getting built-in toggle styles

- [automatic](/documentation/swiftui/togglestyle/automatic) The default toggle style.
- [button](/documentation/swiftui/togglestyle/button) A toggle style that displays as a button with its label as the title.
- [checkbox](/documentation/swiftui/togglestyle/checkbox) A toggle style that displays a checkbox followed by its label.
- [switch](/documentation/swiftui/togglestyle/switch) A toggle style that displays a leading label and a trailing switch.

## Creating custom toggle styles

- [makeBody(configuration:)](/documentation/swiftui/togglestyle/makebody(configuration:)) Creates a view that represents the body of a toggle.
- [ToggleStyleConfiguration](/documentation/swiftui/togglestyleconfiguration) The properties of a toggle instance.
- [ToggleStyle.Configuration](/documentation/swiftui/togglestyle/configuration) The properties of a toggle instance.
- [Body](/documentation/swiftui/togglestyle/body) A view that represents the appearance and interaction of a toggle.

## Supporting types

- [DefaultToggleStyle](/documentation/swiftui/defaulttogglestyle) The default toggle style.
- [ButtonToggleStyle](/documentation/swiftui/buttontogglestyle) A toggle style that displays as a button with its label as the title.
- [CheckboxToggleStyle](/documentation/swiftui/checkboxtogglestyle) A toggle style that displays a checkbox followed by its label.
- [SwitchToggleStyle](/documentation/swiftui/switchtogglestyle) A toggle style that displays a leading label and a trailing switch.

## Styling toggles

- [toggleStyle(_:)](/documentation/swiftui/view/togglestyle(_:))
- [ToggleStyleConfiguration](/documentation/swiftui/togglestyleconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
