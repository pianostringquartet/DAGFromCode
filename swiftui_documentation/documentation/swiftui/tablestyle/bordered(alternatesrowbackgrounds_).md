---
title: bordered(alternatesRowBackgrounds:)
description: The table style that describes the behavior and appearance of a table with standard border.
source: https://developer.apple.com/documentation/swiftui/tablestyle/bordered(alternatesrowbackgrounds:)
timestamp: 2025-10-29T00:11:55.077Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablestyle](/documentation/swiftui/tablestyle)

**Type Method**

# bordered(alternatesRowBackgrounds:)

**Available on:** macOS 12.0+

> The table style that describes the behavior and appearance of a table with standard border.

```swift
@MainActor @preconcurrency static func bordered(alternatesRowBackgrounds: Bool) -> BorderedTableStyle
```

## Parameters

**alternatesRowBackgrounds**

Whether the rows should alternate their backgrounds to help visually distinguish them from each other.



## Discussion

Bordered tables are expected to be inset from their outer containers, but do not have inset style rows or selection.

## Deprecated styles

- [inset(alternatesRowBackgrounds:)](/documentation/swiftui/tablestyle/inset(alternatesrowbackgrounds:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
