---
title: init(of:sortOrder:columns:rows:)
description: Creates a sortable table with the given columns and rows.
source: https://developer.apple.com/documentation/swiftui/table/init(of:sortorder:columns:rows:)
timestamp: 2025-10-29T00:15:28.912Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [table](/documentation/swiftui/table)

**Initializer**

# init(of:sortOrder:columns:rows:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates a sortable table with the given columns and rows.

```swift
nonisolated init<Sort>(of valueType: Value.Type, sortOrder: Binding<[Sort]>, @TableColumnBuilder<Value, Sort> columns: () -> Columns, @TableRowBuilder<Value> rows: () -> Rows) where Sort : SortComparator, Columns.TableRowValue == Sort.Compared
```

## Parameters

**valueType**

The type of value used to derive the table’s contents.



**sortOrder**

A binding to the ordered sorting of columns.



**columns**

The columns to display in the table.



**rows**

The rows to display in the table.



## Creating a sortable table from columns and rows

- [init(of:selection:sortOrder:columns:rows:)](/documentation/swiftui/table/init(of:selection:sortorder:columns:rows:))
- [init(sortOrder:columns:rows:)](/documentation/swiftui/table/init(sortorder:columns:rows:))
- [init(selection:sortOrder:columns:rows:)](/documentation/swiftui/table/init(selection:sortorder:columns:rows:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
