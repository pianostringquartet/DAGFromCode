---
title: init(_:text:prompt:)
description: Creates a secure field with a prompt generated from a .
source: https://developer.apple.com/documentation/swiftui/securefield/init(_:text:prompt:)
timestamp: 2025-10-29T00:10:38.956Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [securefield](/documentation/swiftui/securefield)

**Initializer**

# init(_:text:prompt:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates a secure field with a prompt generated from a .

```swift
nonisolated init(_ titleKey: LocalizedStringKey, text: Binding<String>, prompt: Text?)
```

## Parameters

**titleKey**

The key for the field’s localized title. The title describes the purpose of the field.



**text**

A binding to the text that the field displays and edits.



**prompt**

A [Text](/documentation/swiftui/text) view that represents the secure field’s prompt. The prompt provides guidance on what people should type into the secure field.



## Discussion

Use the [onSubmit(of:_:)](/documentation/swiftui/view/onsubmit(of:_:)) modifier to invoke an action whenever someone submits this secure field — for example, by pressing the Return key.

## Creating a secure text field

- [init(_:text:)](/documentation/swiftui/securefield/init(_:text:))
- [init(text:prompt:label:)](/documentation/swiftui/securefield/init(text:prompt:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
