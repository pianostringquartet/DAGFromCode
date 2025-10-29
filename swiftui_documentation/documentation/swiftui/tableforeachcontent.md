---
title: TableForEachContent
description: A type of table row content that creates table rows created by iterating over a collection.
source: https://developer.apple.com/documentation/swiftui/tableforeachcontent
timestamp: 2025-10-29T00:10:58.893Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TableForEachContent

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> A type of table row content that creates table rows created by iterating over a collection.

```swift
struct TableForEachContent<Data> where Data : RandomAccessCollection, Data.Element : Identifiable
```

## Overview

You don’t use this type directly. The various `Table.init(_:,...)` initializers create this type as the table’s `Rows` generic type.

To explicitly create dynamic collection-based rows, use [For Each](/documentation/swiftui/foreach) instead.

## Conforms To

- [TableRowContent](/documentation/swiftui/tablerowcontent)

## Creating rows

- [TableRow](/documentation/swiftui/tablerow)
- [TableRowContent](/documentation/swiftui/tablerowcontent)
- [TableHeaderRowContent](/documentation/swiftui/tableheaderrowcontent)
- [TupleTableRowContent](/documentation/swiftui/tupletablerowcontent)
- [EmptyTableRowContent](/documentation/swiftui/emptytablerowcontent)
- [DynamicTableRowContent](/documentation/swiftui/dynamictablerowcontent)
- [TableRowBuilder](/documentation/swiftui/tablerowbuilder)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
