---
title: buildBlock(_:)
description: Creates a single, unsortable column result.
source: https://developer.apple.com/documentation/swiftui/tablecolumnbuilder/buildblock(_:)
timestamp: 2025-10-29T00:12:24.900Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumnbuilder](/documentation/swiftui/tablecolumnbuilder)

**Type Method**

# buildBlock(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates a single, unsortable column result.

```swift
static func buildBlock<Column>(_ column: Column) -> Column where RowValue == Column.TableRowValue, Column : TableColumnContent, Column.TableColumnSortComparator == Never
```

## Building a column

- [buildBlock(_:_:)](/documentation/swiftui/tablecolumnbuilder/buildblock(_:_:))
- [buildBlock(_:_:_:)](/documentation/swiftui/tablecolumnbuilder/buildblock(_:_:_:))
- [buildBlock(_:_:_:_:)](/documentation/swiftui/tablecolumnbuilder/buildblock(_:_:_:_:))
- [buildBlock(_:_:_:_:_:)](/documentation/swiftui/tablecolumnbuilder/buildblock(_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:)](/documentation/swiftui/tablecolumnbuilder/buildblock(_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:)](/documentation/swiftui/tablecolumnbuilder/buildblock(_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:)](/documentation/swiftui/tablecolumnbuilder/buildblock(_:_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:_:)](/documentation/swiftui/tablecolumnbuilder/buildblock(_:_:_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:_:_:)](/documentation/swiftui/tablecolumnbuilder/buildblock(_:_:_:_:_:_:_:_:_:_:))
- [buildExpression(_:)](/documentation/swiftui/tablecolumnbuilder/buildexpression(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
