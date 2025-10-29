---
title: buildEither(first:)
description: Creates a column result for the first of two column content alternatives.
source: https://developer.apple.com/documentation/swiftui/tablecolumnbuilder/buildeither(first:)
timestamp: 2025-10-29T00:13:18.819Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumnbuilder](/documentation/swiftui/tablecolumnbuilder)

**Type Method**

# buildEither(first:)

**Available on:** iOS 17.4+, iPadOS 17.4+, Mac Catalyst 17.4+, macOS 14.4+, visionOS 1.1+

> Creates a column result for the first of two column content alternatives.

```swift
static func buildEither<T, F>(first: T) -> _ConditionalContent<T, F> where RowValue == T.TableRowValue, Sort == T.TableColumnSortComparator, T : TableColumnContent, F : TableColumnContent, T.TableColumnSortComparator == F.TableColumnSortComparator, T.TableRowValue == F.TableRowValue
```

## Discussion

This method provides support for “if” statements in multi-statement closures, producing conditional content for the “then” branch.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
