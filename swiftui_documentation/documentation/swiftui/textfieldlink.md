---
title: TextFieldLink
description: A control that requests text input from the user when pressed.
source: https://developer.apple.com/documentation/swiftui/textfieldlink
timestamp: 2025-10-29T00:13:26.361Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TextFieldLink

**Available on:** watchOS 9.0+

> A control that requests text input from the user when pressed.

```swift
struct TextFieldLink<Label> where Label : View
```

## Overview

A `TextFieldLink` should be used to request text input from the user through a button interface.

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a text field link

- [init(_:prompt:onSubmit:)](/documentation/swiftui/textfieldlink/init(_:prompt:onsubmit:)) Creates a TextFieldLink which when pressed will request text input from the user.
- [init(prompt:label:onSubmit:)](/documentation/swiftui/textfieldlink/init(prompt:label:onsubmit:)) Creates a TextFieldLink which when pressed will request text input from the user.

## Linking to other content

- [Link](/documentation/swiftui/link)
- [ShareLink](/documentation/swiftui/sharelink)
- [SharePreview](/documentation/swiftui/sharepreview)
- [HelpLink](/documentation/swiftui/helplink)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
