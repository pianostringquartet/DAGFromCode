---
title: init(_:)
description: Creates a table row for the given value.
source: https://developer.apple.com/documentation/swiftui/tablerow/init(_:)
timestamp: 2025-10-29T00:09:54.164Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablerow](/documentation/swiftui/tablerow)

**Initializer**

# init(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates a table row for the given value.

```swift
init(_ value: Value)
```

## Parameters

**value**

The value of the row.



## Discussion

The table provides the value of a row to each column of a table, which produces the cells for each row in the column.

The following example creates a row for one instance of the `Person` type. The table delivers this value to its columns, which displays different fields of `Person`.

```swift
 TableRow(Person(givenName: "Tom", familyName: "Clark"))
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
