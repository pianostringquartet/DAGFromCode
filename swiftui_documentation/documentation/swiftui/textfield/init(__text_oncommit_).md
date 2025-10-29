---
title: init(_:text:onCommit:)
description: Creates a text field with a text label generated from a localized title string.
source: https://developer.apple.com/documentation/swiftui/textfield/init(_:text:oncommit:)
timestamp: 2025-10-29T00:13:57.405Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textfield](/documentation/swiftui/textfield)

**Initializer**

# init(_:text:onCommit:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a text field with a text label generated from a localized title string.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, text: Binding<String>, onCommit: @escaping () -> Void)
```

## Parameters

**titleKey**

The key for the localized title of the text field, describing its purpose.



**text**

The text to display and edit.



**onCommit**

An action to perform when the user performs an action (for example, when the user presses the Return key) while the text field has focus.



## Creating a text field with a string

- [init(_:text:onEditingChanged:onCommit:)](/documentation/swiftui/textfield/init(_:text:oneditingchanged:oncommit:))
- [init(_:text:onEditingChanged:)](/documentation/swiftui/textfield/init(_:text:oneditingchanged:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
