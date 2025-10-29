---
title: init(title:message:primaryButton:secondaryButton:)
description: Creates an alert with two buttons.
source: https://developer.apple.com/documentation/swiftui/alert/init(title:message:primarybutton:secondarybutton:)
timestamp: 2025-10-29T00:13:15.070Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [alert](/documentation/swiftui/alert)

**Initializer**

# init(title:message:primaryButton:secondaryButton:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates an alert with two buttons.

```swift
init(title: Text, message: Text? = nil, primaryButton: Alert.Button, secondaryButton: Alert.Button)
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
- [sideBySideButtons(title:message:primaryButton:secondaryButton:)](/documentation/swiftui/alert/sidebysidebuttons(title:message:primarybutton:secondarybutton:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
