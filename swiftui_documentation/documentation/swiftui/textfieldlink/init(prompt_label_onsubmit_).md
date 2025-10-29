---
title: init(prompt:label:onSubmit:)
description: Creates a TextFieldLink which when pressed will request text input from the user.
source: https://developer.apple.com/documentation/swiftui/textfieldlink/init(prompt:label:onsubmit:)
timestamp: 2025-10-29T00:10:56.187Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textfieldlink](/documentation/swiftui/textfieldlink)

**Initializer**

# init(prompt:label:onSubmit:)

**Available on:** watchOS 9.0+

> Creates a TextFieldLink which when pressed will request text input from the user.

```swift
nonisolated init(prompt: Text? = nil, @ViewBuilder label: () -> Label, onSubmit: @escaping (String) -> Void)
```

## Parameters

**prompt**

Text which describes the reason for requesting text input.



**label**

A view that describes the action of requesting text input.



**onSubmit**

An action to perform when text input has been accepted and dismissed



## Creating a text field link

- [init(_:prompt:onSubmit:)](/documentation/swiftui/textfieldlink/init(_:prompt:onsubmit:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
