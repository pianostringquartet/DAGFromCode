---
title: Tables
description: Display selectable, sortable data arranged in rows and columns.
source: https://developer.apple.com/documentation/swiftui/tables
timestamp: 2025-10-29T00:13:36.183Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Tables

> Display selectable, sortable data arranged in rows and columns.

## Overview

Use a table to display multiple values across a collection of elements. Each element in the collection appears in a different row of the table, while each value for a given element appears in a different column. Narrow displays may adapt to show only the first column of the table.



When you create a table, you provide a collection of elements, and then tell the table how to find the needed value for each column. In simple cases, SwiftUI infers the element for each row, but you can also specify the row elements explicitly in more complex scenarios. With a small amount of additional configuration, you can also make the items in the table selectable, and the columns sortable.

Like a [List](/documentation/swiftui/list), a table includes implicit vertical scrolling that you can configure using the view modifiers described in [Scroll](/documentation/swiftui/scroll-views). For design guidance, see [lists-and](/design/Human-Interface-Guidelines/lists-and-tables) in the Human Interface Guidelines.

## Creating a table

- [Building a great Mac app with SwiftUI](/documentation/swiftui/building-a-great-mac-app-with-swiftui) Create engaging SwiftUI Mac apps by incorporating side bars, tables, toolbars, and several other popular user interface elements.
- [Table](/documentation/swiftui/table) A container that presents rows of data arranged in one or more columns, optionally providing the ability to select one or more members.
- [tableStyle(_:)](/documentation/swiftui/view/tablestyle(_:)) Sets the style for tables within this view.

## Creating columns

- [TableColumn](/documentation/swiftui/tablecolumn) A column that displays a view for each row in a table.
- [TableColumnContent](/documentation/swiftui/tablecolumncontent) A type used to represent columns within a table.
- [TableColumnAlignment](/documentation/swiftui/tablecolumnalignment) Describes the alignment of the content of a table column.
- [TableColumnBuilder](/documentation/swiftui/tablecolumnbuilder) A result builder that creates table column content from closures.
- [TableColumnForEach](/documentation/swiftui/tablecolumnforeach) A structure that computes columns on demand from an underlying collection of identified data.

## Customizing columns

- [tableColumnHeaders(_:)](/documentation/swiftui/view/tablecolumnheaders(_:)) Controls the visibility of a ’s column header views.
- [TableColumnCustomization](/documentation/swiftui/tablecolumncustomization) A representation of the state of the columns in a table.
- [TableColumnCustomizationBehavior](/documentation/swiftui/tablecolumncustomizationbehavior) A set of customization behaviors of a column that a table can offer to a user.

## Creating rows

- [TableRow](/documentation/swiftui/tablerow) A row that represents a data value in a table.
- [TableRowContent](/documentation/swiftui/tablerowcontent) A type used to represent table rows.
- [TableHeaderRowContent](/documentation/swiftui/tableheaderrowcontent) A table row that displays a single view instead of columned content.
- [TupleTableRowContent](/documentation/swiftui/tupletablerowcontent) A type of table column content that creates table rows created from a Swift tuple of table rows.
- [TableForEachContent](/documentation/swiftui/tableforeachcontent) A type of table row content that creates table rows created by iterating over a collection.
- [EmptyTableRowContent](/documentation/swiftui/emptytablerowcontent) A table row content that doesn’t produce any rows.
- [DynamicTableRowContent](/documentation/swiftui/dynamictablerowcontent) A type of table row content that generates table rows from an underlying collection of data.
- [TableRowBuilder](/documentation/swiftui/tablerowbuilder) A result builder that creates table row content from closures.

## Adding progressive disclosure

- [DisclosureTableRow](/documentation/swiftui/disclosuretablerow) A kind of table row that shows or hides additional rows based on the state of a disclosure control.
- [TableOutlineGroupContent](/documentation/swiftui/tableoutlinegroupcontent) An opaque table row type created by a table’s hierarchical initializers.

## View layout

- [Layout fundamentals](/documentation/swiftui/layout-fundamentals)
- [Layout adjustments](/documentation/swiftui/layout-adjustments)
- [Custom layout](/documentation/swiftui/custom-layout)
- [Lists](/documentation/swiftui/lists)
- [View groupings](/documentation/swiftui/view-groupings)
- [Scroll views](/documentation/swiftui/scroll-views)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
