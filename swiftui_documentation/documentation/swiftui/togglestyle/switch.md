---
title: switch
description: A toggle style that displays a leading label and a trailing switch.
source: https://developer.apple.com/documentation/swiftui/togglestyle/switch
timestamp: 2025-10-29T00:09:25.028Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [togglestyle](/documentation/swiftui/togglestyle)

**Type Property**

# switch

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 18.0+, visionOS 1.0+, watchOS 6.0+

> A toggle style that displays a leading label and a trailing switch.

```swift
@MainActor @preconcurrency static var `switch`: SwitchToggleStyle { get }
```

## Discussion

Apply this style to a [Toggle](/documentation/swiftui/toggle) or to a view hierarchy that contains toggles using the [toggleStyle(_:)](/documentation/swiftui/view/togglestyle(_:)) modifier:

```swift
Toggle("Enhance Sound", isOn: $isEnhanced)
    .toggleStyle(.switch)
```

The style produces a label that describes the purpose of the toggle and a switch that shows the toggle’s state. The user taps or clicks the switch to change the toggle’s state. The default appearance is similar across platforms, although the way you use switches in your user interface varies a little, as described in [toggles](/design/Human-Interface-Guidelines/toggles) in the Human Interface Guidelines.

In iOS, iPadOS, watchOS, and tvOS, the label and switch fill as much horizontal space as the toggle’s parent offers by aligning the label’s leading edge and the switch’s trailing edge with the containing view’s respective leading and trailing edges. In macOS, the style uses a minimum of horizontal space by aligning the trailing edge of the label with the leading edge of the switch. SwiftUI helps you to manage the spacing and alignment when this style appears in a [Form](/documentation/swiftui/form).

SwiftUI uses this style as the default for iOS, iPadOS, watchOS, and tvOS in most contexts when you don’t set a style, or when you apply the [automatic](/documentation/swiftui/togglestyle/automatic) style.

## Getting built-in toggle styles

- [automatic](/documentation/swiftui/togglestyle/automatic)
- [button](/documentation/swiftui/togglestyle/button)
- [checkbox](/documentation/swiftui/togglestyle/checkbox)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
