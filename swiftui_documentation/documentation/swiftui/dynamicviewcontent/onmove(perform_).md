---
title: onMove(perform:)
description: Sets the move action for the dynamic view.
source: https://developer.apple.com/documentation/swiftui/dynamicviewcontent/onmove(perform:)
timestamp: 2025-10-29T00:10:46.939Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dynamicviewcontent](/documentation/swiftui/dynamicviewcontent)

**Instance Method**

# onMove(perform:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the move action for the dynamic view.

```swift
nonisolated func onMove(perform action: Optional<(IndexSet, Int) -> Void>) -> some DynamicViewContent
```

## Parameters

**action**

A closure that SwiftUI invokes when elements in the dynamic view are moved. The closure takes two arguments that represent the offset relative to the dynamic view’s underlying collection of data. Pass `nil` to disable the ability to move items.



## Return Value

A view that calls `action` when elements are moved within the original view.

## Responding to updates

- [onDelete(perform:)](/documentation/swiftui/dynamicviewcontent/ondelete(perform:))
- [onInsert(of:perform:)](/documentation/swiftui/dynamicviewcontent/oninsert(of:perform:)-418bq)
- [dropDestination(for:action:)](/documentation/swiftui/dynamicviewcontent/dropdestination(for:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
