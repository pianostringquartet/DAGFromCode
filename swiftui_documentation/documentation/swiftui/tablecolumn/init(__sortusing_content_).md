---
title: init(_:sortUsing:content:)
description: Creates a sortable column with text label.
source: https://developer.apple.com/documentation/swiftui/tablecolumn/init(_:sortusing:content:)
timestamp: 2025-10-29T00:09:39.489Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumn](/documentation/swiftui/tablecolumn)

**Initializer**

# init(_:sortUsing:content:)

**Available on:** iOS 16.6+, iPadOS 16.6+, Mac Catalyst 16.6+, macOS 13.5+, visionOS 1.0+

> Creates a sortable column with text label.

```swift
nonisolated init(_ text: Text, sortUsing comparator: Sort, @ViewBuilder content: @escaping (RowValue) -> Content)
```

## Parameters

**text**

The column’s label.



**comparator**

The prototype sort comparator to use when representing this column. When a person taps or clicks the column header, the containing table’s `sortOrder` incorporates this value, potentially with a flipped order.



**content**

The view content to display for each row in a table.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view for you, and treats the title similar to [init(_:)](/documentation/swiftui/text/init(_:)). For more information about localizing strings, see [Text](/documentation/swiftui/text).

## Creating a sortable column

- [init(_:value:content:)](/documentation/swiftui/tablecolumn/init(_:value:content:))
- [init(_:value:comparator:)](/documentation/swiftui/tablecolumn/init(_:value:comparator:))
- [init(_:value:comparator:content:)](/documentation/swiftui/tablecolumn/init(_:value:comparator:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
