---
title: init(text:selection:prompt:axis:label:)
description: Creates a text field with a binding to the current selection and a prompt generated from a .
source: https://developer.apple.com/documentation/swiftui/textfield/init(text:selection:prompt:axis:label:)
timestamp: 2025-10-29T00:09:55.679Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textfield](/documentation/swiftui/textfield)

**Initializer**

# init(text:selection:prompt:axis:label:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Creates a text field with a binding to the current selection and a prompt generated from a .

```swift
nonisolated init(text: Binding<String>, selection: Binding<TextSelection?>, prompt: Text? = nil, axis: Axis? = nil, @ViewBuilder label: () -> Label)
```

## Parameters

**text**

The text to display and edit.



**selection**

A [Binding](/documentation/swiftui/binding) to the variable containing the selection.



**prompt**

A `Text` representing the prompt of the text field which provides users with guidance on what to type into the text field. Defaults to `nil`.



**axis**

The axis in which to scroll text when it doesn’t fit in the available space. Defaults to `nil`.



**label**

A view that describes the purpose of the text field.



## Discussion

The following example shows a text field with a binding to the current selection:

```swift
@State private var message: String = ""
@State private var selection: TextSelection? = nil

var body: some View {
    TextField(text: $message, selection: $selection) {
        Text("Message")
    }
}
```

Use the [onSubmit(of:_:)](/documentation/swiftui/view/onsubmit(of:_:)) modifier to invoke an action whenever the user submits this text field.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
