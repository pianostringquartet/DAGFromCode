---
title: init(_:selection:sortOrder:columns:)
description: Creates a sortable table that computes its rows based on a collection of identifiable data, and supports selecting multiple rows.
source: https://developer.apple.com/documentation/swiftui/table/init(_:selection:sortorder:columns:)
timestamp: 2025-10-29T00:10:08.140Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [table](/documentation/swiftui/table)

**Initializer**

# init(_:selection:sortOrder:columns:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates a sortable table that computes its rows based on a collection of identifiable data, and supports selecting multiple rows.

```swift
nonisolated init<Data, Sort>(_ data: Data, selection: Binding<Set<Value.ID>>, sortOrder: Binding<[Sort]>, @TableColumnBuilder<Value, Sort> columns: () -> Columns) where Rows == TableForEachContent<Data>, Data : RandomAccessCollection, Sort : SortComparator, Columns.TableRowValue == Data.Element, Data.Element == Sort.Compared
```

## Parameters

**data**

The identifiable data for computing the table rows.



**selection**

A binding to a set that identifies selected rows IDs.



**sortOrder**

A binding to the ordered sorting of columns.



**columns**

The columns to display in the table.



## Creating a sortable table from columns

- [init(_:sortOrder:columns:)](/documentation/swiftui/table/init(_:sortorder:columns:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
