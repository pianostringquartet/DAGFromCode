---
title: checkbox
description: A toggle style that displays a checkbox followed by its label.
source: https://developer.apple.com/documentation/swiftui/togglestyle/checkbox
timestamp: 2025-10-29T00:10:41.532Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [togglestyle](/documentation/swiftui/togglestyle)

**Type Property**

# checkbox

**Available on:** macOS 10.15+

> A toggle style that displays a checkbox followed by its label.

```swift
@MainActor @preconcurrency static var checkbox: CheckboxToggleStyle { get }
```

## Discussion

Apply this style to a [Toggle](/documentation/swiftui/toggle) or to a view hierarchy that contains toggles using the [toggleStyle(_:)](/documentation/swiftui/view/togglestyle(_:)) modifier:

```swift
Toggle("Close windows when quitting an app", isOn: $doesClose)
    .toggleStyle(.checkbox)
```

The style produces a label that describes the purpose of the toggle and a checkbox that shows the toggle’s state. To change the toggle’s state, the user clicks the checkbox or its label:



The style aligns the trailing edge of the checkbox with the leading edge of the label, and takes as much horizontal space as it needs to fit the label, up to the amount offered by the toggle’s parent view.

This is the default style in macOS in most contexts when you don’t set a style, or when you apply the [automatic](/documentation/swiftui/togglestyle/automatic) style. A [Form](/documentation/swiftui/form) is a convenient way to present a collection of checkboxes with proper spacing and alignment. For guidance on using checkboxes in your user interface, see [toggles#Checkboxes](/design/Human-Interface-Guidelines/toggles) in the Human Interface Guidelines.

## Getting built-in toggle styles

- [automatic](/documentation/swiftui/togglestyle/automatic)
- [button](/documentation/swiftui/togglestyle/button)
- [switch](/documentation/swiftui/togglestyle/switch)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
