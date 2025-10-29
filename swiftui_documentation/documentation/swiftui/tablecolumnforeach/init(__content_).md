---
title: init(_:content:)
description: Creates an instance that uniquely identifies and creates table columns across updates based on the identity of the underlying data.
source: https://developer.apple.com/documentation/swiftui/tablecolumnforeach/init(_:content:)
timestamp: 2025-10-29T00:09:22.667Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumnforeach](/documentation/swiftui/tablecolumnforeach)

**Initializer**

# init(_:content:)

**Available on:** iOS 17.4+, iPadOS 17.4+, Mac Catalyst 17.4+, macOS 14.4+, visionOS 1.1+

> Creates an instance that uniquely identifies and creates table columns across updates based on the identity of the underlying data.

```swift
init(_ data: Data, @TableColumnBuilder<TableColumnForEach<Data, ID, RowValue, Sort, Content>.TableRowValue, TableColumnForEach<Data, ID, RowValue, Sort, Content>.TableColumnSortComparator> content: @escaping (Data.Element) -> Content) where ID == Data.Element.ID, Data.Element : Identifiable
```

## Parameters

**data**

The identified data that the [Table Column For Each](/documentation/swiftui/tablecolumnforeach) instance uses to create table columns dynamically.



**content**

The table column builder that creates columns dynamically for each element.



## Creating the collection

- [init(_:id:content:)](/documentation/swiftui/tablecolumnforeach/init(_:id:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
