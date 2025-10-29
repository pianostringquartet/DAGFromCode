---
title: labelsHidden()
description: Hides the labels of any controls contained within this view.
source: https://developer.apple.com/documentation/swiftui/view/labelshidden()
timestamp: 2025-10-29T00:14:57.529Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# labelsHidden()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Hides the labels of any controls contained within this view.

```swift
nonisolated func labelsHidden() -> some View
```

## Discussion

Use this modifier when you want to omit a label from one or more controls in your user interface. For example, the first [Toggle](/documentation/swiftui/toggle) in the following example hides its label:

```swift
VStack {
    Toggle(isOn: $toggle1) {
        Text("Toggle 1")
    }
    .labelsHidden()

    Toggle(isOn: $toggle2) {
        Text("Toggle 2")
    }
}
```

The [VStack](/documentation/swiftui/vstack) in the example above centers the first toggle’s control element in the available space, while it centers the second toggle’s combined label and control element:



Always provide a label for controls, even when you hide the label, because SwiftUI uses labels for other purposes, including accessibility.

> [!NOTE]
> This modifier doesn’t work for all labels. It applies to labels that are separate from the rest of the control’s interface, like they are for [Toggle](/documentation/swiftui/toggle), but not to controls like a bordered button where the label is inside the button’s border.

## Hiding system elements

- [labelsVisibility(_:)](/documentation/swiftui/view/labelsvisibility(_:))
- [labelsVisibility](/documentation/swiftui/environmentvalues/labelsvisibility)
- [menuIndicator(_:)](/documentation/swiftui/view/menuindicator(_:))
- [statusBarHidden(_:)](/documentation/swiftui/view/statusbarhidden(_:))
- [persistentSystemOverlays(_:)](/documentation/swiftui/view/persistentsystemoverlays(_:))
- [Visibility](/documentation/swiftui/visibility)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
