---
title: init(of:selection:columnCustomization:columns:rows:)
description: Creates a table with the given columns and rows that supports selecting multiple rows that generates its data using values of the given type and has dynamically customizable columns.
source: https://developer.apple.com/documentation/swiftui/table/init(of:selection:columncustomization:columns:rows:)
timestamp: 2025-10-29T00:10:07.996Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [table](/documentation/swiftui/table)

**Initializer**

# init(of:selection:columnCustomization:columns:rows:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Creates a table with the given columns and rows that supports selecting multiple rows that generates its data using values of the given type and has dynamically customizable columns.

```swift
nonisolated init(of valueType: Value.Type, selection: Binding<Set<Value.ID>>, columnCustomization: Binding<TableColumnCustomization<Value>>, @TableColumnBuilder<Value, Never> columns: () -> Columns, @TableRowBuilder<Value> rows: () -> Rows)
```

## Parameters

**valueType**

The type of value used to derive the table’s contents.



**selection**

A binding to a set that identifies the selected rows IDs.



**columnCustomization**

A binding to the state of columns.



**columns**

The columns to display in the table.



**rows**

The rows to display in the table.



## Discussion

Each column in the table that should participate in customization is required to have an identifier, specified with [customizationID(_:)](/documentation/swiftui/tablecolumncontent/customizationid(_:)).

## Creating a table with dynamically customizable columns

- [init(of:columnCustomization:columns:rows:)](/documentation/swiftui/table/init(of:columncustomization:columns:rows:))
- [init(of:selection:sortOrder:columnCustomization:columns:rows:)](/documentation/swiftui/table/init(of:selection:sortorder:columncustomization:columns:rows:))
- [init(of:sortOrder:columnCustomization:columns:rows:)](/documentation/swiftui/table/init(of:sortorder:columncustomization:columns:rows:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
