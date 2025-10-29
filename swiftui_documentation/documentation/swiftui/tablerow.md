---
title: TableRow
description: A row that represents a data value in a table.
source: https://developer.apple.com/documentation/swiftui/tablerow
timestamp: 2025-10-29T00:13:08.990Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TableRow

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> A row that represents a data value in a table.

```swift
struct TableRow<Value> where Value : Identifiable
```

## Overview

Create instances of [Table Row](/documentation/swiftui/tablerow) in the closure you provide to the `rows` parameter in [Table](/documentation/swiftui/table) initializers that take columns and rows. The table provides the value of a row to each column of a table, which produces the cells for each row in the column.

## Conforms To

- [TableRowContent](/documentation/swiftui/tablerowcontent)

## Creating a row

- [init(_:)](/documentation/swiftui/tablerow/init(_:)) Creates a table row for the given value.

## Creating rows

- [TableRowContent](/documentation/swiftui/tablerowcontent)
- [TableHeaderRowContent](/documentation/swiftui/tableheaderrowcontent)
- [TupleTableRowContent](/documentation/swiftui/tupletablerowcontent)
- [TableForEachContent](/documentation/swiftui/tableforeachcontent)
- [EmptyTableRowContent](/documentation/swiftui/emptytablerowcontent)
- [DynamicTableRowContent](/documentation/swiftui/dynamictablerowcontent)
- [TableRowBuilder](/documentation/swiftui/tablerowbuilder)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
