---
title: init(_:prompt:onSubmit:)
description: Creates a TextFieldLink which when pressed will request text input from the user.
source: https://developer.apple.com/documentation/swiftui/textfieldlink/init(_:prompt:onsubmit:)
timestamp: 2025-10-29T00:09:16.272Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textfieldlink](/documentation/swiftui/textfieldlink)

**Initializer**

# init(_:prompt:onSubmit:)

**Available on:** watchOS 9.0+

> Creates a TextFieldLink which when pressed will request text input from the user.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, prompt: Text? = nil, onSubmit: @escaping (String) -> Void)
```

## Parameters

**titleKey**

A key for the TextFieldLink’s localized title, that describes the purpose of requesting text input.



**prompt**

Text which describes the reason for requesting text input.



**onSubmit**

An action to perform when text input has been accepted and dismissed



## Creating a text field link

- [init(prompt:label:onSubmit:)](/documentation/swiftui/textfieldlink/init(prompt:label:onsubmit:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
