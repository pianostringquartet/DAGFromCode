---
title: init(_:text:onEditingChanged:)
description: Creates a text field with a text label generated from a localized title string.
source: https://developer.apple.com/documentation/swiftui/textfield/init(_:text:oneditingchanged:)
timestamp: 2025-10-29T00:09:34.341Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textfield](/documentation/swiftui/textfield)

**Initializer**

# init(_:text:onEditingChanged:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a text field with a text label generated from a localized title string.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, text: Binding<String>, onEditingChanged: @escaping (Bool) -> Void)
```

## Parameters

**titleKey**

The key for the localized title of the text field, describing its purpose.



**text**

The text to display and edit.



**onEditingChanged**

The action to perform when the user begins editing `text` and after the user finishes editing `text`. The closure receives a Boolean value that indicates the editing status: `true` when the user begins editing, `false` when they finish.



## Creating a text field with a string

- [init(_:text:onEditingChanged:onCommit:)](/documentation/swiftui/textfield/init(_:text:oneditingchanged:oncommit:))
- [init(_:text:onCommit:)](/documentation/swiftui/textfield/init(_:text:oncommit:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
