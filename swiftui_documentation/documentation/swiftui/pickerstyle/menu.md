---
title: menu
description: A picker style that presents the options as a menu when the user presses a button, or as a submenu when nested within a larger menu.
source: https://developer.apple.com/documentation/swiftui/pickerstyle/menu
timestamp: 2025-10-29T00:10:47.437Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pickerstyle](/documentation/swiftui/pickerstyle)

**Type Property**

# menu

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 17.0+, visionOS 1.0+

> A picker style that presents the options as a menu when the user presses a button, or as a submenu when nested within a larger menu.

```swift
static var menu: MenuPickerStyle { get }
```

## Discussion

Use this style when there are more than five options. Consider using [inline](/documentation/swiftui/pickerstyle/inline) when there are fewer than five options.

The button itself indicates the selected option. You can include additional controls in the set of options, such as a button to customize the list of options.

To apply this style to a picker, or to a view that contains pickers, use the [pickerStyle(_:)](/documentation/swiftui/view/pickerstyle(_:)) modifier.

## Getting built-in picker styles

- [automatic](/documentation/swiftui/pickerstyle/automatic)
- [inline](/documentation/swiftui/pickerstyle/inline)
- [navigationLink](/documentation/swiftui/pickerstyle/navigationlink)
- [palette](/documentation/swiftui/pickerstyle/palette)
- [radioGroup](/documentation/swiftui/pickerstyle/radiogroup)
- [segmented](/documentation/swiftui/pickerstyle/segmented)
- [wheel](/documentation/swiftui/pickerstyle/wheel)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
