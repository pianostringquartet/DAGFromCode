---
title: init(_:value:comparator:)
description: Creates a sortable column that displays a string property and has a text label.
source: https://developer.apple.com/documentation/swiftui/tablecolumn/init(_:value:comparator:)
timestamp: 2025-10-29T00:13:52.638Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumn](/documentation/swiftui/tablecolumn)

**Initializer**

# init(_:value:comparator:)

**Available on:** iOS 16.6+, iPadOS 16.6+, Mac Catalyst 16.6+, macOS 13.5+, visionOS 1.0+

> Creates a sortable column that displays a string property and has a text label.

```swift
init(_ text: Text, value: KeyPath<RowValue, String>, comparator: String.StandardComparator = .localizedStandard) where Content == Text
```

## Parameters

**text**

The column’s label.



**value**

The path to the property associated with the column, to display verbatim as text in each row of a table, and the key path used to create a sort comparator when sorting the column.



**comparator**

The `SortComparator` used to order the string values.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view for you, and treats the title similar to [init(_:)](/documentation/swiftui/text/init(_:)). For more information about localizing strings, see [Text](/documentation/swiftui/text).

## Creating a sortable column

- [init(_:value:content:)](/documentation/swiftui/tablecolumn/init(_:value:content:))
- [init(_:value:comparator:content:)](/documentation/swiftui/tablecolumn/init(_:value:comparator:content:))
- [init(_:sortUsing:content:)](/documentation/swiftui/tablecolumn/init(_:sortusing:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
