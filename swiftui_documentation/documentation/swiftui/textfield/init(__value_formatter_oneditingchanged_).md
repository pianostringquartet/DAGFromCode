---
title: init(_:value:formatter:onEditingChanged:)
description: Create an instance which binds over an arbitrary type, .
source: https://developer.apple.com/documentation/swiftui/textfield/init(_:value:formatter:oneditingchanged:)
timestamp: 2025-10-29T00:14:11.520Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textfield](/documentation/swiftui/textfield)

**Initializer**

# init(_:value:formatter:onEditingChanged:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Create an instance which binds over an arbitrary type, .

```swift
nonisolated init<S, V>(_ title: S, value: Binding<V>, formatter: Formatter, onEditingChanged: @escaping (Bool) -> Void) where S : StringProtocol
```

## Parameters

**title**

The title of the text field, describing its purpose.



**value**

The underlying value to be edited.



**formatter**

A formatter to use when converting between the string the user edits and the underlying value of type `V`. In the event that `formatter` is unable to perform the conversion, `binding.value` isn’t modified.



**onEditingChanged**

The action to perform when the user begins editing `text` and after the user finishes editing `text`. The closure receives a Boolean value that indicates the editing status: `true` when the user begins editing, `false` when they finish.



## Creating a text field with a value

- [init(_:value:formatter:onEditingChanged:onCommit:)](/documentation/swiftui/textfield/init(_:value:formatter:oneditingchanged:oncommit:))
- [init(_:value:formatter:onCommit:)](/documentation/swiftui/textfield/init(_:value:formatter:oncommit:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
