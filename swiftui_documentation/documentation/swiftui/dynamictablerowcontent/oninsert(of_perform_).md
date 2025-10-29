---
title: onInsert(of:perform:)
description: Sets the insert action for the dynamic table rows.
source: https://developer.apple.com/documentation/swiftui/dynamictablerowcontent/oninsert(of:perform:)
timestamp: 2025-10-29T00:15:30.901Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dynamictablerowcontent](/documentation/swiftui/dynamictablerowcontent)

**Instance Method**

# onInsert(of:perform:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Sets the insert action for the dynamic table rows.

```swift
func onInsert(of supportedContentTypes: [UTType], perform action: @escaping (Int, [NSItemProvider]) -> Void) -> ModifiedContent<Self, OnInsertTableRowModifier>
```

## Parameters

**supportedContentTypes**

An array of universal type identifiers types that the rows supports.



**action**

A closure that SwiftUI invokes when adding elements to the collection of rows. The closure takes two arguments. The first argument is the offset relative to the dynamic view’s underlying collection of data. The second argument is an array of [NSItem Provider](/documentation/Foundation/NSItemProvider) items that represents the data that you want to insert.



## Return Value

A view that calls `action` when inserting elements into the original view.

## Inserting rows

- [OnInsertTableRowModifier](/documentation/swiftui/oninserttablerowmodifier)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
