---
title: width(min:ideal:max:)
description: Creates a resizable table column with the provided constraints.
source: https://developer.apple.com/documentation/swiftui/tablecolumn/width(min:ideal:max:)
timestamp: 2025-10-29T00:09:20.604Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumn](/documentation/swiftui/tablecolumn)

**Instance Method**

# width(min:ideal:max:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates a resizable table column with the provided constraints.

```swift
nonisolated func width(min: CGFloat? = nil, ideal: CGFloat? = nil, max: CGFloat? = nil) -> TableColumn<RowValue, Sort, Content, Label>
```

## Parameters

**min**

The minimum width of a resizable column. If non-`nil`, the value must be greater than or equal to `0`.



**ideal**

The ideal width of the column, used to determine the initial width of the table column. The column always starts at least as large as the set ideal size, but may be larger if table was sized larger than the ideal of all of its columns.



**max**

The maximum width of a resizable column. If non-`nil`, the value must be greater than `0`. Pass doc://com.apple.documentation/documentation/CoreFoundation/CGFloat/1454161-infinity to indicate unconstrained maximum width.



## Discussion

Always specify at least one width constraint when calling this method. Pass `nil` or leave out a constraint to indicate no change to the sizing of a column.

To create a fixed size column use [width(_:)](/documentation/swiftui/tablecolumn/width(_:)) instead.

## Setting the column width

- [width(_:)](/documentation/swiftui/tablecolumn/width(_:))
- [width()](/documentation/swiftui/tablecolumn/width())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
