---
title: numeric
description: Column alignment appropriate for numeric content.
source: https://developer.apple.com/documentation/swiftui/tablecolumnalignment/numeric
timestamp: 2025-10-29T00:09:52.533Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumnalignment](/documentation/swiftui/tablecolumnalignment)

**Type Property**

# numeric

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Column alignment appropriate for numeric content.

```swift
static var numeric: TableColumnAlignment { get }
```

## Discussion

Use this alignment when a table column is primarily displaying numeric content, so that the values are easy to visually scan and compare.

This uses the current locale’s numbering system to determine the alignment:

- For left to right numbering systems, this is equivalent to right.
- For right to left numbering systems, this is equivalent to left.

## Getting the alignment

- [automatic](/documentation/swiftui/tablecolumnalignment/automatic)
- [leading](/documentation/swiftui/tablecolumnalignment/leading)
- [center](/documentation/swiftui/tablecolumnalignment/center)
- [trailing](/documentation/swiftui/tablecolumnalignment/trailing)
- [numeric(_:)](/documentation/swiftui/tablecolumnalignment/numeric(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
