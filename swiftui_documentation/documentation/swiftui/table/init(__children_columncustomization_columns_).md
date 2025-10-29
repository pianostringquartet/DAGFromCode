---
title: init(_:children:columnCustomization:columns:)
description: Creates a hierarchical table that computes its rows based on a collection of identifiable data and key path to the children of that data.
source: https://developer.apple.com/documentation/swiftui/table/init(_:children:columncustomization:columns:)
timestamp: 2025-10-29T00:13:35.574Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [table](/documentation/swiftui/table)

**Initializer**

# init(_:children:columnCustomization:columns:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Creates a hierarchical table that computes its rows based on a collection of identifiable data and key path to the children of that data.

```swift
nonisolated init<Data>(_ data: Data, children: KeyPath<Value, Data?>, columnCustomization: Binding<TableColumnCustomization<Value>>? = nil, @TableColumnBuilder<Value, Never> columns: () -> Columns) where Rows == TableOutlineGroupContent<Data>, Data : RandomAccessCollection, Columns.TableRowValue == Data.Element
```

## Parameters

**data**

The identifiable data for computing the table rows.



**children**

A key path to a property whose non-`nil` value gives the children of `data`, and whose `nil` value represents a leaf row of the hierarchy, which is not capable of having children.



**columnCustomization**

A binding to the state of columns.



**columns**

The columns to display in the table.



## Discussion

Each column in the table that should participate in customization is required to have an identifier, specified with [customizationID(_:)](/documentation/swiftui/tablecolumncontent/customizationid(_:)).

## Creating a hierarchical table

- [init(_:children:selection:columnCustomization:columns:)](/documentation/swiftui/table/init(_:children:selection:columncustomization:columns:))
- [init(_:children:selection:sortOrder:columnCustomization:columns:)](/documentation/swiftui/table/init(_:children:selection:sortorder:columncustomization:columns:))
- [init(_:children:sortOrder:columnCustomization:columns:)](/documentation/swiftui/table/init(_:children:sortorder:columncustomization:columns:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
