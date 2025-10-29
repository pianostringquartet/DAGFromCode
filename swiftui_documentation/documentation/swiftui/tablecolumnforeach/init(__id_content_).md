---
title: init(_:id:content:)
description: Creates an instance that uniquely identifies and creates table columns across updates based on the provided key path to the underlying data’s identifier.
source: https://developer.apple.com/documentation/swiftui/tablecolumnforeach/init(_:id:content:)
timestamp: 2025-10-29T00:12:24.512Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumnforeach](/documentation/swiftui/tablecolumnforeach)

**Initializer**

# init(_:id:content:)

**Available on:** iOS 17.4+, iPadOS 17.4+, Mac Catalyst 17.4+, macOS 14.4+, visionOS 1.1+

> Creates an instance that uniquely identifies and creates table columns across updates based on the provided key path to the underlying data’s identifier.

```swift
init(_ data: Data, id: KeyPath<Data.Element, ID>, @TableColumnBuilder<TableColumnForEach<Data, ID, RowValue, Sort, Content>.TableRowValue, TableColumnForEach<Data, ID, RowValue, Sort, Content>.TableColumnSortComparator> content: @escaping (Data.Element) -> Content)
```

## Parameters

**data**

The data that the [Table Column For Each](/documentation/swiftui/tablecolumnforeach) instance uses to create table columns dynamically.



**id**

The key path to the provided data’s identifier.



**content**

The table column builder that creates columns dynamically for each element.



## Creating the collection

- [init(_:content:)](/documentation/swiftui/tablecolumnforeach/init(_:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
