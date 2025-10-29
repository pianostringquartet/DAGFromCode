---
title: TableColumn
description: A column that displays a view for each row in a table.
source: https://developer.apple.com/documentation/swiftui/tablecolumn
timestamp: 2025-10-29T00:11:06.277Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TableColumn

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> A column that displays a view for each row in a table.

```swift
struct TableColumn<RowValue, Sort, Content, Label> where RowValue : Identifiable, Sort : SortComparator, Content : View, Label : View
```

## Overview

You create a column with a label, content view, and optional key path. The table calls the content view builder with the value for each row in the table. The column uses a key path to map to a property of each row value, which sortable tables use to reflect the current sort order.

The following example creates a sortable column for a table with `Person` rows, displaying each person’s given name:

```swift
TableColumn("Given name", value: \.givenName) { person in
    Text(person.givenName)
}
```

For the common case of `String` properties, you can use the convenience initializer that doesn’t require an explicit content closure and displays that string verbatim as a [Text](/documentation/swiftui/text) view. This means you can write the previous example as:

```swift
TableColumn("Given name", value: \.givenName)
```

## Conforms To

- [TableColumnContent](/documentation/swiftui/tablecolumncontent)

## Creating an unsortable column

- [init(_:value:)](/documentation/swiftui/tablecolumn/init(_:value:)) Creates an unsortable column that displays a string property with a text label.
- [init(_:content:)](/documentation/swiftui/tablecolumn/init(_:content:)) Creates an unsortable column with a text label

## Creating a sortable column

- [init(_:value:content:)](/documentation/swiftui/tablecolumn/init(_:value:content:)) Creates a sortable column for Boolean values with a text label.
- [init(_:value:comparator:)](/documentation/swiftui/tablecolumn/init(_:value:comparator:)) Creates a sortable column that displays a string property and has a text label.
- [init(_:value:comparator:content:)](/documentation/swiftui/tablecolumn/init(_:value:comparator:content:)) Creates a sortable column with a text label.
- [init(_:sortUsing:content:)](/documentation/swiftui/tablecolumn/init(_:sortusing:content:)) Creates a sortable column with text label.

## Setting the column width

- [width(_:)](/documentation/swiftui/tablecolumn/width(_:)) Creates a fixed width table column that isn’t user resizable.
- [width(min:ideal:max:)](/documentation/swiftui/tablecolumn/width(min:ideal:max:)) Creates a resizable table column with the provided constraints.
- [width()](/documentation/swiftui/tablecolumn/width()) Sets the column’s width.

## Creating columns

- [TableColumnContent](/documentation/swiftui/tablecolumncontent)
- [TableColumnAlignment](/documentation/swiftui/tablecolumnalignment)
- [TableColumnBuilder](/documentation/swiftui/tablecolumnbuilder)
- [TableColumnForEach](/documentation/swiftui/tablecolumnforeach)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
