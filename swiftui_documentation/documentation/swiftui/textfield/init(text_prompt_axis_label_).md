---
title: init(text:prompt:axis:label:)
description: Creates a text field with a preferred axis and a prompt generated from a .
source: https://developer.apple.com/documentation/swiftui/textfield/init(text:prompt:axis:label:)
timestamp: 2025-10-29T00:13:26.864Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textfield](/documentation/swiftui/textfield)

**Initializer**

# init(text:prompt:axis:label:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a text field with a preferred axis and a prompt generated from a .

```swift
nonisolated init(text: Binding<String>, prompt: Text? = nil, axis: Axis, @ViewBuilder label: () -> Label)
```

## Parameters

**text**

The text to display and edit.



**prompt**

A `Text` representing the prompt of the text field which provides users with guidance on what to type into the text field.



**axis**

The axis in which to scroll text when it doesn’t fit in the available space.



**label**

A view that describes the purpose of the text field.



## Discussion

Specify a preferred axis in which the text field should scroll its content when it does not fit in the available space. Depending on the style of the field, this axis may not be respected.

Use the [onSubmit(of:_:)](/documentation/swiftui/view/onsubmit(of:_:)) modifier to invoke an action whenever the user submits this text field.

## Creating a scrollable text field

- [init(_:text:axis:)](/documentation/swiftui/textfield/init(_:text:axis:))
- [init(_:text:prompt:axis:)](/documentation/swiftui/textfield/init(_:text:prompt:axis:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
