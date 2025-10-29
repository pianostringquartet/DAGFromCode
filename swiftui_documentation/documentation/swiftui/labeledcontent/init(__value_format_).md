---
title: init(_:value:format:)
description: Creates a labeled informational view from a formatted value.
source: https://developer.apple.com/documentation/swiftui/labeledcontent/init(_:value:format:)
timestamp: 2025-10-29T00:12:27.972Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [labeledcontent](/documentation/swiftui/labeledcontent)

**Initializer**

# init(_:value:format:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a labeled informational view from a formatted value.

```swift
init<F>(_ titleKey: LocalizedStringKey, value: F.FormatInput, format: F) where F : FormatStyle, F.FormatInput : Equatable, F.FormatOutput == String
```

## Parameters

**titleKey**

The key for the view’s localized title, that describes the purpose of the view.



**value**

The value being labeled.



**format**

A format style of type `F` to convert the underlying value of type `F.FormatInput` to a string representation.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) label on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See `Text` for more information about localizing strings.

```swift
Form {
    LabeledContent("Age", value: person.age, format: .number)
    LabeledContent("Height", value: person.height,
        format: .measurement(width: .abbreviated))
}
```

## Creating labeled content

- [init(_:content:)](/documentation/swiftui/labeledcontent/init(_:content:))
- [init(content:label:)](/documentation/swiftui/labeledcontent/init(content:label:))
- [init(_:value:)](/documentation/swiftui/labeledcontent/init(_:value:))
- [init(_:)](/documentation/swiftui/labeledcontent/init(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
