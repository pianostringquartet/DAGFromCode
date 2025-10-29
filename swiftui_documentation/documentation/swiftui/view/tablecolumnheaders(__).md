---
title: tableColumnHeaders(_:)
description: Controls the visibility of a ’s column header views.
source: https://developer.apple.com/documentation/swiftui/view/tablecolumnheaders(_:)
timestamp: 2025-10-29T00:10:35.459Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# tableColumnHeaders(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Controls the visibility of a ’s column header views.

```swift
nonisolated func tableColumnHeaders(_ visibility: Visibility) -> some View
```

## Parameters

**visibility**

A value of `visible` will show table columns, `hidden` will remove them, and `automatic` will defer to default behavior.



## Discussion

By default, `Table` will display a global header view with the labels of each table column. This area is also where users can sort, resize, and rearrange the columns. For simple cases that don’t require those features, this header can be hidden.

This will not affect the header of any `Section`s in a table.

```swift
Table(article.authors) {
    TableColumn("Name", value: \.name)
    TableColumn("Title", value: \.title)
}
.tableColumnHeaders(.hidden)
```

## Customizing columns

- [TableColumnCustomization](/documentation/swiftui/tablecolumncustomization)
- [TableColumnCustomizationBehavior](/documentation/swiftui/tablecolumncustomizationbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
