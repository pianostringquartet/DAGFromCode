---
title: init(_:value:content:)
description: Creates a sortable column for Boolean values with a text label.
source: https://developer.apple.com/documentation/swiftui/tablecolumn/init(_:value:content:)
timestamp: 2025-10-29T00:14:43.740Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumn](/documentation/swiftui/tablecolumn)

**Initializer**

# init(_:value:content:)

**Available on:** iOS 16.6+, iPadOS 16.6+, Mac Catalyst 16.6+, macOS 13.5+, visionOS 1.0+

> Creates a sortable column for Boolean values with a text label.

```swift
init(_ text: Text, value: KeyPath<RowValue, Bool>, @ViewBuilder content: @escaping (RowValue) -> Content)
```

## Parameters

**text**

The column’s label.



**value**

The path to the property associated with the column, which will be used to update and reflect the sorting state in a table.



**content**

The view content to display for each row in a table.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See [Text](/documentation/swiftui/text) for more information about localizing strings.

## Creating a sortable column

- [init(_:value:comparator:)](/documentation/swiftui/tablecolumn/init(_:value:comparator:))
- [init(_:value:comparator:content:)](/documentation/swiftui/tablecolumn/init(_:value:comparator:content:))
- [init(_:sortUsing:content:)](/documentation/swiftui/tablecolumn/init(_:sortusing:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
