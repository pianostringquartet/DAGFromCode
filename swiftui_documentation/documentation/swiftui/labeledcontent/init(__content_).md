---
title: init(_:content:)
description: Creates a labeled view that generates its label from a localized string key.
source: https://developer.apple.com/documentation/swiftui/labeledcontent/init(_:content:)
timestamp: 2025-10-29T00:09:10.935Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [labeledcontent](/documentation/swiftui/labeledcontent)

**Initializer**

# init(_:content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a labeled view that generates its label from a localized string key.

```swift
init(_ titleKey: LocalizedStringKey, @ViewBuilder content: () -> Content)
```

## Parameters

**titleKey**

The key for the view’s localized title, that describes the purpose of the view.



**content**

The value content being labeled.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) label on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See `Text` for more information about localizing strings.

## Creating labeled content

- [init(content:label:)](/documentation/swiftui/labeledcontent/init(content:label:))
- [init(_:value:)](/documentation/swiftui/labeledcontent/init(_:value:))
- [init(_:value:format:)](/documentation/swiftui/labeledcontent/init(_:value:format:))
- [init(_:)](/documentation/swiftui/labeledcontent/init(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
