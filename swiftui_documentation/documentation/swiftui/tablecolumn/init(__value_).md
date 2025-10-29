---
title: init(_:value:)
description: Creates an unsortable column that displays a string property with a text label.
source: https://developer.apple.com/documentation/swiftui/tablecolumn/init(_:value:)
timestamp: 2025-10-29T00:11:03.629Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumn](/documentation/swiftui/tablecolumn)

**Initializer**

# init(_:value:)

**Available on:** iOS 16.6+, iPadOS 16.6+, Mac Catalyst 16.6+, macOS 13.5+, visionOS 1.0+

> Creates an unsortable column that displays a string property with a text label.

```swift
nonisolated init(_ text: Text, value: KeyPath<RowValue, String>) where Content == Text
```

## Parameters

**text**

The column’s label.



**value**

The path to the property associated with the column. The table uses this to display the property as verbatim text in each row of the table.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view for you, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). For more information about localizing strings, see [Text](/documentation/swiftui/text).

## Creating an unsortable column

- [init(_:content:)](/documentation/swiftui/tablecolumn/init(_:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
