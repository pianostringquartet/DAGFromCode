---
title: makeBody(configuration:)
description: Creates a view that represents the body of a table.
source: https://developer.apple.com/documentation/swiftui/tablestyle/makebody(configuration:)
timestamp: 2025-10-29T00:11:55.337Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablestyle](/documentation/swiftui/tablestyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates a view that represents the body of a table.

```swift
@ViewBuilder @MainActor @preconcurrency func makeBody(configuration: Self.Configuration) -> Self.Body
```

## Parameters

**configuration**

The properties of the table.



## Discussion

The system calls this method for each [Table](/documentation/swiftui/table) instance in a view hierarchy where this style is the current table style.

## Creating custom table styles

- [TableStyle.Configuration](/documentation/swiftui/tablestyle/configuration)
- [Body](/documentation/swiftui/tablestyle/body)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
