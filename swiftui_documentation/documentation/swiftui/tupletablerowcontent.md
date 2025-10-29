---
title: TupleTableRowContent
description: A type of table column content that creates table rows created from a Swift tuple of table rows.
source: https://developer.apple.com/documentation/swiftui/tupletablerowcontent
timestamp: 2025-10-29T00:12:55.029Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TupleTableRowContent

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> A type of table column content that creates table rows created from a Swift tuple of table rows.

```swift
@frozen struct TupleTableRowContent<Value, T> where Value : Identifiable
```

## Overview

Don’t use this type directly; instead, SwiftUI uses this type as the return value from the various `buildBlock` methods in [Table Row Builder](/documentation/swiftui/tablerowbuilder). The size of the tuple corresponds to how many columns you create in the `rows` closure you provide to the [Table](/documentation/swiftui/table) initializer.

## Conforms To

- [TableRowContent](/documentation/swiftui/tablerowcontent)

## Accessing the value

- [value](/documentation/swiftui/tupletablerowcontent/value)

## Creating rows

- [TableRow](/documentation/swiftui/tablerow)
- [TableRowContent](/documentation/swiftui/tablerowcontent)
- [TableHeaderRowContent](/documentation/swiftui/tableheaderrowcontent)
- [TableForEachContent](/documentation/swiftui/tableforeachcontent)
- [EmptyTableRowContent](/documentation/swiftui/emptytablerowcontent)
- [DynamicTableRowContent](/documentation/swiftui/dynamictablerowcontent)
- [TableRowBuilder](/documentation/swiftui/tablerowbuilder)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
