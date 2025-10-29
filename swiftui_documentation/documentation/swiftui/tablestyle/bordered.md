---
title: bordered
description: The table style that describes the behavior and appearance of a table with standard border.
source: https://developer.apple.com/documentation/swiftui/tablestyle/bordered
timestamp: 2025-10-29T00:10:50.039Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablestyle](/documentation/swiftui/tablestyle)

**Type Property**

# bordered

**Available on:** macOS 12.0+

> The table style that describes the behavior and appearance of a table with standard border.

```swift
@MainActor @preconcurrency static var bordered: BorderedTableStyle { get }
```

## Discussion

Bordered tables are expected to be inset from their outer containers, but do not have inset style rows or selection.

To customize whether the rows of the table should alternate their backgrounds, use [alternatingRowBackgrounds(_:)](/documentation/swiftui/view/alternatingrowbackgrounds(_:)).

## Getting built-in table styles

- [automatic](/documentation/swiftui/tablestyle/automatic)
- [inset](/documentation/swiftui/tablestyle/inset)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
