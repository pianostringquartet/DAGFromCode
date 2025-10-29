---
title: init(_:selection:columnCustomization:columns:)
description: Creates a table that computes its rows based on a collection of identifiable data, that supports selecting multiple rows, and that has dynamically customizable columns.
source: https://developer.apple.com/documentation/swiftui/table/init(_:selection:columncustomization:columns:)
timestamp: 2025-10-29T00:12:34.513Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [table](/documentation/swiftui/table)

**Initializer**

# init(_:selection:columnCustomization:columns:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Creates a table that computes its rows based on a collection of identifiable data, that supports selecting multiple rows, and that has dynamically customizable columns.

```swift
nonisolated init<Data>(_ data: Data, selection: Binding<Set<Value.ID>>, columnCustomization: Binding<TableColumnCustomization<Value>>, @TableColumnBuilder<Value, Never> columns: () -> Columns) where Rows == TableForEachContent<Data>, Data : RandomAccessCollection, Columns.TableRowValue == Data.Element
```

## Parameters

**data**

The identifiable data for computing the table rows.



**selection**

A binding to a set that identifies selected rows IDs.



**columnCustomization**

A binding to the state of columns.



**columns**

The columns to display in the table.



## Discussion

Each column in the table that should participate in customization is required to have an identifier, specified with [customizationID(_:)](/documentation/swiftui/tablecolumncontent/customizationid(_:)).

## Creating a table with customizable columns

- [init(_:columnCustomization:columns:)](/documentation/swiftui/table/init(_:columncustomization:columns:))
- [init(_:selection:sortOrder:columnCustomization:columns:)](/documentation/swiftui/table/init(_:selection:sortorder:columncustomization:columns:))
- [init(_:sortOrder:columnCustomization:columns:)](/documentation/swiftui/table/init(_:sortorder:columncustomization:columns:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
