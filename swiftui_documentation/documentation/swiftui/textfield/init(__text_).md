---
title: init(_:text:)
description: Creates a text field with a text label generated from a localized title string.
source: https://developer.apple.com/documentation/swiftui/textfield/init(_:text:)
timestamp: 2025-10-29T00:09:29.584Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textfield](/documentation/swiftui/textfield)

**Initializer**

# init(_:text:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a text field with a text label generated from a localized title string.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, text: Binding<String>)
```

## Parameters

**titleKey**

The key for the localized title of the text field, describing its purpose.



**text**

The text to display and edit.



## Creating a text field with a string

- [init(_:text:prompt:)](/documentation/swiftui/textfield/init(_:text:prompt:))
- [init(text:prompt:label:)](/documentation/swiftui/textfield/init(text:prompt:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
