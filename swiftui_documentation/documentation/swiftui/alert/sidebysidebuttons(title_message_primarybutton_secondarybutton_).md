---
title: sideBySideButtons(title:message:primaryButton:secondaryButton:)
description: Creates a side by side button alert.
source: https://developer.apple.com/documentation/swiftui/alert/sidebysidebuttons(title:message:primarybutton:secondarybutton:)
timestamp: 2025-10-29T00:13:26.065Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [alert](/documentation/swiftui/alert)

**Type Method**

# sideBySideButtons(title:message:primaryButton:secondaryButton:)

**Available on:** watchOS 6.0+

> Creates a side by side button alert.

```swift
static func sideBySideButtons(title: Text, message: Text? = nil, primaryButton: Alert.Button, secondaryButton: Alert.Button) -> Alert
```

## Parameters

**title**

The title of the alert.



**message**

The message to display in the body of the alert.



**primaryButton**

The first button to show in the alert.



**secondaryButton**

The second button to show in the alert.



## Discussion

The system determines the visual ordering of the buttons.

## Creating an alert

- [init(title:message:dismissButton:)](/documentation/swiftui/alert/init(title:message:dismissbutton:))
- [init(title:message:primaryButton:secondaryButton:)](/documentation/swiftui/alert/init(title:message:primarybutton:secondarybutton:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
