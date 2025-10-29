---
title: numeric(_:)
description: Column alignment appropriate for numeric content.
source: https://developer.apple.com/documentation/swiftui/tablecolumnalignment/numeric(_:)
timestamp: 2025-10-29T00:10:59.288Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumnalignment](/documentation/swiftui/tablecolumnalignment)

**Type Method**

# numeric(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Column alignment appropriate for numeric content.

```swift
static func numeric(_ numberingSystem: Locale.NumberingSystem) -> TableColumnAlignment
```

## Discussion

Use this alignment when a table column is primarily displaying numeric content, so that the values are easy to visually scan and compare.

This uses the provided numbering system to determine the alignment:

- For left to right numbering systems, this is equivalent to right.
- For right to left numbering systems, this is equivalent to left.

## Getting the alignment

- [automatic](/documentation/swiftui/tablecolumnalignment/automatic)
- [leading](/documentation/swiftui/tablecolumnalignment/leading)
- [center](/documentation/swiftui/tablecolumnalignment/center)
- [trailing](/documentation/swiftui/tablecolumnalignment/trailing)
- [numeric](/documentation/swiftui/tablecolumnalignment/numeric)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
