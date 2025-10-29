---
title: init(_:content:)
description: Creates an unsortable column with a text label
source: https://developer.apple.com/documentation/swiftui/tablecolumn/init(_:content:)
timestamp: 2025-10-29T00:14:19.476Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablecolumn](/documentation/swiftui/tablecolumn)

**Initializer**

# init(_:content:)

**Available on:** iOS 16.6+, iPadOS 16.6+, Mac Catalyst 16.6+, macOS 13.5+, visionOS 1.0+

> Creates an unsortable column with a text label

```swift
nonisolated init(_ text: Text, @ViewBuilder content: @escaping (RowValue) -> Content)
```

## Parameters

**text**

The column’s label.



**content**

The view content to display for each row in a table.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view for you, and treats the title similar to [init(_:)](/documentation/swiftui/text/init(_:)). For information about localizing strings, see [Text](/documentation/swiftui/text).

## Creating an unsortable column

- [init(_:value:)](/documentation/swiftui/tablecolumn/init(_:value:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
