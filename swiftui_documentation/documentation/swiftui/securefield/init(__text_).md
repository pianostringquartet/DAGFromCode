---
title: init(_:text:)
description: Creates a secure field with a prompt generated from a .
source: https://developer.apple.com/documentation/swiftui/securefield/init(_:text:)
timestamp: 2025-10-29T00:09:40.895Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [securefield](/documentation/swiftui/securefield)

**Initializer**

# init(_:text:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a secure field with a prompt generated from a .

```swift
nonisolated init(_ titleKey: LocalizedStringKey, text: Binding<String>)
```

## Parameters

**titleKey**

The key for the field’s localized title. The title describes the purpose of the field.



**text**

A binding to the text that the field displays and edits.



## Discussion

Use the [onSubmit(of:_:)](/documentation/swiftui/view/onsubmit(of:_:)) modifier to invoke an action whenever someone submits this secure field — for example, by pressing the Return key.

## Creating a secure text field

- [init(_:text:prompt:)](/documentation/swiftui/securefield/init(_:text:prompt:))
- [init(text:prompt:label:)](/documentation/swiftui/securefield/init(text:prompt:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
