---
title: width(_:)
description: Creates a fixed width table column that isn’t user resizable.
source: https://developer.apple.com/documentation/swiftui/tablecolumn/width(_:)
timestamp: 2025-10-29T00:10:59.658Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumn](/documentation/swiftui/tablecolumn)

**Instance Method**

# width(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates a fixed width table column that isn’t user resizable.

```swift
nonisolated func width(_ width: CGFloat? = nil) -> TableColumn<RowValue, Sort, Content, Label>
```

## Parameters

**width**

A fixed width for the resulting column. If `width` is `nil`, the resulting column has no change in sizing.



## Setting the column width

- [width(min:ideal:max:)](/documentation/swiftui/tablecolumn/width(min:ideal:max:))
- [width()](/documentation/swiftui/tablecolumn/width())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
