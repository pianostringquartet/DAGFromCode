---
title: init(of:columns:rows:)
description: Creates a table with the given columns and rows that generates its contents using values of the given type.
source: https://developer.apple.com/documentation/swiftui/table/init(of:columns:rows:)
timestamp: 2025-10-29T00:11:58.567Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [table](/documentation/swiftui/table)

**Initializer**

# init(of:columns:rows:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates a table with the given columns and rows that generates its contents using values of the given type.

```swift
nonisolated init(of valueType: Value.Type, @TableColumnBuilder<Value, Never> columns: () -> Columns, @TableRowBuilder<Value> rows: () -> Rows)
```

## Parameters

**valueType**

The type of value used to derive the table’s contents.



**columns**

The columns to display in the table.



**rows**

The rows to display in the table.



## Creating a table from columns and rows

- [init(of:selection:columns:rows:)](/documentation/swiftui/table/init(of:selection:columns:rows:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
