---
title: TableOutlineGroupContent
description: An opaque table row type created by a table’s hierarchical initializers.
source: https://developer.apple.com/documentation/swiftui/tableoutlinegroupcontent
timestamp: 2025-10-29T00:12:48.141Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TableOutlineGroupContent

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> An opaque table row type created by a table’s hierarchical initializers.

```swift
struct TableOutlineGroupContent<Data> where Data : RandomAccessCollection, Data.Element : Identifiable
```

## Overview

This row content is created by `Table.init(_:,children:,...)` initializers as the table’s `Rows` generic type.

To explicitly create hierarchical rows, use [Outline Group](/documentation/swiftui/outlinegroup) instead.

## Conforms To

- [TableRowContent](/documentation/swiftui/tablerowcontent)

## Adding progressive disclosure

- [DisclosureTableRow](/documentation/swiftui/disclosuretablerow)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
