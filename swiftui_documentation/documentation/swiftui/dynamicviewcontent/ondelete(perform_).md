---
title: onDelete(perform:)
description: Sets the deletion action for the dynamic view. You must delete the corresponding item within , as it will be called after the row has already been removed from the .
source: https://developer.apple.com/documentation/swiftui/dynamicviewcontent/ondelete(perform:)
timestamp: 2025-10-29T00:12:26.784Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dynamicviewcontent](/documentation/swiftui/dynamicviewcontent)

**Instance Method**

# onDelete(perform:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the deletion action for the dynamic view. You must delete the corresponding item within , as it will be called after the row has already been removed from the .

```swift
nonisolated func onDelete(perform action: Optional<(IndexSet) -> Void>) -> some DynamicViewContent
```

## Parameters

**action**

The action that you want SwiftUI to perform when elements in the view are deleted. SwiftUI passes a set of indices to the closure that’s relative to the dynamic view’s underlying collection of data.



## Return Value

A view that calls `action` when elements are deleted from the original view.

## Responding to updates

- [onInsert(of:perform:)](/documentation/swiftui/dynamicviewcontent/oninsert(of:perform:)-418bq)
- [onMove(perform:)](/documentation/swiftui/dynamicviewcontent/onmove(perform:))
- [dropDestination(for:action:)](/documentation/swiftui/dynamicviewcontent/dropdestination(for:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
