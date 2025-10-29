---
title: PickerStyle
description: A type that specifies the appearance and interaction of all pickers within a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/pickerstyle
timestamp: 2025-10-29T00:13:57.203Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# PickerStyle

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A type that specifies the appearance and interaction of all pickers within a view hierarchy.

```swift
protocol PickerStyle
```

## Conforming Types

- [DefaultPickerStyle](/documentation/swiftui/defaultpickerstyle)
- [InlinePickerStyle](/documentation/swiftui/inlinepickerstyle)
- [MenuPickerStyle](/documentation/swiftui/menupickerstyle)
- [NavigationLinkPickerStyle](/documentation/swiftui/navigationlinkpickerstyle)
- [PalettePickerStyle](/documentation/swiftui/palettepickerstyle)
- [PopUpButtonPickerStyle](/documentation/swiftui/popupbuttonpickerstyle)
- [RadioGroupPickerStyle](/documentation/swiftui/radiogrouppickerstyle)
- [SegmentedPickerStyle](/documentation/swiftui/segmentedpickerstyle)
- [WheelPickerStyle](/documentation/swiftui/wheelpickerstyle)

## Getting built-in picker styles

- [automatic](/documentation/swiftui/pickerstyle/automatic) The default picker style, based on the picker’s context.
- [inline](/documentation/swiftui/pickerstyle/inline) A  where each option is displayed inline with other views in the current container.
- [menu](/documentation/swiftui/pickerstyle/menu) A picker style that presents the options as a menu when the user presses a button, or as a submenu when nested within a larger menu.
- [navigationLink](/documentation/swiftui/pickerstyle/navigationlink) A picker style represented by a navigation link that presents the options by pushing a List-style picker view.
- [palette](/documentation/swiftui/pickerstyle/palette) A picker style that presents the options as a row of compact elements.
- [radioGroup](/documentation/swiftui/pickerstyle/radiogroup) A picker style that presents the options as a group of radio buttons.
- [segmented](/documentation/swiftui/pickerstyle/segmented) A picker style that presents the options in a segmented control.
- [wheel](/documentation/swiftui/pickerstyle/wheel) A picker style that presents the options in a scrollable wheel that shows the selected option and a few neighboring options.

## Supporting types

- [DefaultPickerStyle](/documentation/swiftui/defaultpickerstyle) The default picker style, based on the picker’s context.
- [InlinePickerStyle](/documentation/swiftui/inlinepickerstyle) A  where each option is displayed inline with other views in the current container.
- [MenuPickerStyle](/documentation/swiftui/menupickerstyle) A picker style that presents the options as a menu when the user presses a button, or as a submenu when nested within a larger menu.
- [NavigationLinkPickerStyle](/documentation/swiftui/navigationlinkpickerstyle) A picker style represented by a navigation link that presents the options by pushing a List-style picker view.
- [PalettePickerStyle](/documentation/swiftui/palettepickerstyle) A picker style that presents the options as a row of compact elements.
- [RadioGroupPickerStyle](/documentation/swiftui/radiogrouppickerstyle) A picker style that presents the options as a group of radio buttons.
- [SegmentedPickerStyle](/documentation/swiftui/segmentedpickerstyle) A picker style that presents the options in a segmented control.
- [WheelPickerStyle](/documentation/swiftui/wheelpickerstyle) A picker style that presents the options in a scrollable wheel that shows the selected option and a few neighboring options.

## Deprecated styles

- [PopUpButtonPickerStyle](/documentation/swiftui/popupbuttonpickerstyle) A picker style that presents the options as a menu when the user presses a button.

## Styling pickers

- [pickerStyle(_:)](/documentation/swiftui/view/pickerstyle(_:))
- [datePickerStyle(_:)](/documentation/swiftui/view/datepickerstyle(_:))
- [DatePickerStyle](/documentation/swiftui/datepickerstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
