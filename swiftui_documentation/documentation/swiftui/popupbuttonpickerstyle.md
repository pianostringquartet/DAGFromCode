---
title: PopUpButtonPickerStyle
description: A picker style that presents the options as a menu when the user presses a button.
source: https://developer.apple.com/documentation/swiftui/popupbuttonpickerstyle
timestamp: 2025-10-29T00:09:36.407Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PopUpButtonPickerStyle

**Available on:** macOS 10.15+

> A picker style that presents the options as a menu when the user presses a button.

```swift
struct PopUpButtonPickerStyle
```

## Overview

Use this style when there are more than five options. Consider using [Radio Group Picker Style](/documentation/swiftui/radiogrouppickerstyle) when there are fewer than five options.

The button itself indicates the selected option. You can include additional controls in the set of options, such as a button to customize the list of options.

To apply this style to a picker, or to a view that contains pickers, use the [pickerStyle(_:)](/documentation/swiftui/view/pickerstyle(_:)) modifier.

### Creating the picker style

- [init()](/documentation/swiftui/popupbuttonpickerstyle/init())

## Conforms To

- [PickerStyle](/documentation/swiftui/pickerstyle)

## Initializers

- [init()](/documentation/swiftui/popupbuttonpickerstyle/init()) Creates a pop-up button picker style.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
