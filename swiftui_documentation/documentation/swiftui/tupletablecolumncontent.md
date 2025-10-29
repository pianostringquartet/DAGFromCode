---
title: TupleTableColumnContent
description: A type of table column content that creates table columns created from a Swift tuple of table columns.
source: https://developer.apple.com/documentation/swiftui/tupletablecolumncontent
timestamp: 2025-10-29T00:11:19.562Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TupleTableColumnContent

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> A type of table column content that creates table columns created from a Swift tuple of table columns.

```swift
@frozen struct TupleTableColumnContent<RowValue, Sort, T> where RowValue : Identifiable, Sort : SortComparator
```

## Overview

Don’t use this type directly; instead, SwiftUI uses this type as the return value from the various `buildBlock` methods in [Table Column Builder](/documentation/swiftui/tablecolumnbuilder). The size of the tuple corresponds to how many columns you create in the `columns` closure you provide to the [Table](/documentation/swiftui/table) initializer.

## Conforms To

- [TableColumnContent](/documentation/swiftui/tablecolumncontent)

## Accessing the value

- [value](/documentation/swiftui/tupletablecolumncontent/value) The value of a row presented by this column content.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
