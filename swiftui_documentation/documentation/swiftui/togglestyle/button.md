---
title: button
description: A toggle style that displays as a button with its label as the title.
source: https://developer.apple.com/documentation/swiftui/togglestyle/button
timestamp: 2025-10-29T00:09:24.512Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [togglestyle](/documentation/swiftui/togglestyle)

**Type Property**

# button

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+, watchOS 9.0+

> A toggle style that displays as a button with its label as the title.

```swift
@MainActor @preconcurrency static var button: ButtonToggleStyle { get }
```

## Discussion

Apply this style to a [Toggle](/documentation/swiftui/toggle) or to a view hierarchy that contains toggles using the [toggleStyle(_:)](/documentation/swiftui/view/togglestyle(_:)) modifier:

```swift
Toggle(isOn: $isFlagged) {
    Label("Flag", systemImage: "flag.fill")
}
.toggleStyle(.button)
```

The style produces a button with a label that describes the purpose of the toggle. The user taps or clicks the button to change the toggle’s state. The button indicates the `on` state by filling in the background with its tint color. You can change the tint color using the [tint(_:)](/documentation/swiftui/view/tint(_:)) modifier. SwiftUI uses this style as the default for toggles that appear in a toolbar.

The following table shows the toggle in both the `off` and `on` states, respectively:

A [Label](/documentation/swiftui/label) instance is a good choice for a button toggle’s label. Based on the context, SwiftUI decides whether to display both the title and icon, as in the example above, or just the icon, like when the toggle appears in a toolbar. You can also control the label’s style by adding a [labelStyle(_:)](/documentation/swiftui/view/labelstyle(_:)) modifier. In any case, SwiftUI always uses the title to identify the control using VoiceOver.

## Getting built-in toggle styles

- [automatic](/documentation/swiftui/togglestyle/automatic)
- [checkbox](/documentation/swiftui/togglestyle/checkbox)
- [switch](/documentation/swiftui/togglestyle/switch)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
