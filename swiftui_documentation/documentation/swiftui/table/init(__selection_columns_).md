---
title: init(_:selection:columns:)
description: Creates a table that computes its rows based on a collection of identifiable data, and that supports selecting multiple rows.
source: https://developer.apple.com/documentation/swiftui/table/init(_:selection:columns:)
timestamp: 2025-10-29T00:11:36.546Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [table](/documentation/swiftui/table)

**Initializer**

# init(_:selection:columns:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates a table that computes its rows based on a collection of identifiable data, and that supports selecting multiple rows.

```swift
nonisolated init<Data>(_ data: Data, selection: Binding<Set<Value.ID>>, @TableColumnBuilder<Value, Never> columns: () -> Columns) where Rows == TableForEachContent<Data>, Data : RandomAccessCollection, Columns.TableRowValue == Data.Element
```

## Parameters

**data**

The identifiable data for computing the table rows.



**selection**

A binding to a set that identifies selected rows IDs.



**columns**

The columns to display in the table.



## Creating a table from columns

- [init(_:columns:)](/documentation/swiftui/table/init(_:columns:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
