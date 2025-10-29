---
title: init(of:selection:columns:rows:)
description: Creates a table with the given columns and rows that supports selecting multiple rows that generates its data using values of the given type.
source: https://developer.apple.com/documentation/swiftui/table/init(of:selection:columns:rows:)
timestamp: 2025-10-29T00:13:03.291Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [table](/documentation/swiftui/table)

**Initializer**

# init(of:selection:columns:rows:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates a table with the given columns and rows that supports selecting multiple rows that generates its data using values of the given type.

```swift
nonisolated init(of valueType: Value.Type, selection: Binding<Set<Value.ID>>, @TableColumnBuilder<Value, Never> columns: () -> Columns, @TableRowBuilder<Value> rows: () -> Rows)
```

## Parameters

**valueType**

The type of value used to derive the table’s contents.



**selection**

A binding to a set that identifies the selected rows IDs.



**columns**

The columns to display in the table.



**rows**

The rows to display in the table.



## Creating a table from columns and rows

- [init(of:columns:rows:)](/documentation/swiftui/table/init(of:columns:rows:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
