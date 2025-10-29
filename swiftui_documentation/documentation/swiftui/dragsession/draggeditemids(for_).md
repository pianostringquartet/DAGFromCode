---
title: draggedItemIDs(for:)
description: Provides an array of identifiers of the currently dragged items in a case when the items conform to the  protocol, or identifiers were provided to SwiftUI separately.
source: https://developer.apple.com/documentation/swiftui/dragsession/draggeditemids(for:)
timestamp: 2025-10-29T00:15:35.473Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dragsession](/documentation/swiftui/dragsession)

**Instance Method**

# draggedItemIDs(for:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> Provides an array of identifiers of the currently dragged items in a case when the items conform to the  protocol, or identifiers were provided to SwiftUI separately.

```swift
func draggedItemIDs<ItemID>(for type: ItemID.Type) -> [ItemID] where ItemID : Hashable
```

## Discussion

Parameter type: The type of the identifiers. Returns: The array with the identifiers of the dragged items if provided. Returns an empty array if no dragged identifiers of a given type exist.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
