---
title: init(text:prompt:label:)
description: Creates a text field with a prompt generated from a .
source: https://developer.apple.com/documentation/swiftui/textfield/init(text:prompt:label:)
timestamp: 2025-10-29T00:11:05.646Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textfield](/documentation/swiftui/textfield)

**Initializer**

# init(text:prompt:label:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates a text field with a prompt generated from a .

```swift
nonisolated init(text: Binding<String>, prompt: Text? = nil, @ViewBuilder label: () -> Label)
```

## Parameters

**text**

The text to display and edit.



**prompt**

A `Text` representing the prompt of the text field which provides users with guidance on what to type into the text field.



**label**

A view that describes the purpose of the text field.



## Discussion

Use the [onSubmit(of:_:)](/documentation/swiftui/view/onsubmit(of:_:)) modifier to invoke an action whenever the user submits this text field.

## Creating a text field with a string

- [init(_:text:)](/documentation/swiftui/textfield/init(_:text:))
- [init(_:text:prompt:)](/documentation/swiftui/textfield/init(_:text:prompt:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
