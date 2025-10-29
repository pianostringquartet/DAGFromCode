---
title: init(_:sortOrder:columns:)
description: Creates a sortable table that computes its rows based on a collection of identifiable data.
source: https://developer.apple.com/documentation/swiftui/table/init(_:sortorder:columns:)
timestamp: 2025-10-29T00:15:28.884Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [table](/documentation/swiftui/table)

**Initializer**

# init(_:sortOrder:columns:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates a sortable table that computes its rows based on a collection of identifiable data.

```swift
nonisolated init<Data, Sort>(_ data: Data, sortOrder: Binding<[Sort]>, @TableColumnBuilder<Value, Sort> columns: () -> Columns) where Rows == TableForEachContent<Data>, Data : RandomAccessCollection, Sort : SortComparator, Columns.TableRowValue == Data.Element, Data.Element == Sort.Compared
```

## Parameters

**data**

The identifiable data for computing the table rows.



**sortOrder**

A binding to the ordered sorting of columns.



**columns**

The columns to display in the table.



## Creating a sortable table from columns

- [init(_:selection:sortOrder:columns:)](/documentation/swiftui/table/init(_:selection:sortorder:columns:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
