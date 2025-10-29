---
title: DynamicTableRowContent
description: A type of table row content that generates table rows from an underlying collection of data.
source: https://developer.apple.com/documentation/swiftui/dynamictablerowcontent
timestamp: 2025-10-29T00:09:40.058Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# DynamicTableRowContent

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> A type of table row content that generates table rows from an underlying collection of data.

```swift
protocol DynamicTableRowContent : TableRowContent
```

## Overview

This table row content type provides drag-and-drop support for tables. Use the [onInsert(of:perform:)](/documentation/swiftui/dynamictablerowcontent/oninsert(of:perform:)) modifier to add an action to call when the table inserts new contents into its underlying collection.

## Inherits From

- [TableRowContent](/documentation/swiftui/tablerowcontent)

## Conforming Types

- [ForEach](/documentation/swiftui/foreach)
- [ModifiedContent](/documentation/swiftui/modifiedcontent)

## Getting row data

- [data](/documentation/swiftui/dynamictablerowcontent/data-swift.property) The collection of underlying data.
- [Data](/documentation/swiftui/dynamictablerowcontent/data-swift.associatedtype) The type of the underlying collection of data.

## Inserting rows

- [onInsert(of:perform:)](/documentation/swiftui/dynamictablerowcontent/oninsert(of:perform:)) Sets the insert action for the dynamic table rows.
- [OnInsertTableRowModifier](/documentation/swiftui/oninserttablerowmodifier) A table row modifier that adds the ability to insert data in some base row content.

## Supporting drag and drop

- [dropDestination(for:action:)](/documentation/swiftui/dynamictablerowcontent/dropdestination(for:action:)) Sets the insert action for the dynamic table rows.

## Creating rows

- [TableRow](/documentation/swiftui/tablerow)
- [TableRowContent](/documentation/swiftui/tablerowcontent)
- [TableHeaderRowContent](/documentation/swiftui/tableheaderrowcontent)
- [TupleTableRowContent](/documentation/swiftui/tupletablerowcontent)
- [TableForEachContent](/documentation/swiftui/tableforeachcontent)
- [EmptyTableRowContent](/documentation/swiftui/emptytablerowcontent)
- [TableRowBuilder](/documentation/swiftui/tablerowbuilder)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
