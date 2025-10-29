---
title: buildBlock(_:_:_:)
description: Creates an unsortable column result from three sources.
source: https://developer.apple.com/documentation/swiftui/tablecolumnbuilder/buildblock(_:_:_:)
timestamp: 2025-10-29T00:14:52.473Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumnbuilder](/documentation/swiftui/tablecolumnbuilder)

**Type Method**

# buildBlock(_:_:_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates an unsortable column result from three sources.

```swift
static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> TupleTableColumnContent<RowValue, Never, (C0, C1, C2)> where RowValue == C0.TableRowValue, C0 : TableColumnContent, C1 : TableColumnContent, C2 : TableColumnContent, C0.TableColumnSortComparator == Never, C0.TableRowValue == C1.TableRowValue, C1.TableColumnSortComparator == Never, C1.TableRowValue == C2.TableRowValue, C2.TableColumnSortComparator == Never
```

## Building a column

- [buildBlock(_:)](/documentation/swiftui/tablecolumnbuilder/buildblock(_:))
- [buildBlock(_:_:)](/documentation/swiftui/tablecolumnbuilder/buildblock(_:_:))
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
