---
title: onInsert(of:perform:)
description: Sets the insert action for the dynamic view.
source: https://developer.apple.com/documentation/swiftui/dynamicviewcontent/oninsert(of:perform:)
timestamp: 2025-10-29T00:12:10.116Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dynamicviewcontent](/documentation/swiftui/dynamicviewcontent)

**Instance Method**

# onInsert(of:perform:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Sets the insert action for the dynamic view.

```swift
nonisolated func onInsert(of supportedContentTypes: [UTType], perform action: @escaping (Int, [NSItemProvider]) -> Void) -> some DynamicViewContent
```

## Parameters

**supportedContentTypes**

An array of UTI types that the dynamic view supports.



**action**

A closure that SwiftUI invokes when elements are added to the view. The closure takes two arguments: The first argument is the offset relative to the dynamic view’s underlying collection of data. The second argument is an array of [NSItem Provider](/documentation/Foundation/NSItemProvider) items that represents the data that you want to insert.



## Return Value

A view that calls `action` when elements are inserted into the original view.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
