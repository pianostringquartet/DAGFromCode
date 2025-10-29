---
title: draggable(_:)
description: Activates this row as the source of a drag and drop operation.
source: https://developer.apple.com/documentation/swiftui/tablerowcontent/draggable(_:)
timestamp: 2025-10-29T00:11:05.001Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablerowcontent](/documentation/swiftui/tablerowcontent)

**Instance Method**

# draggable(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Activates this row as the source of a drag and drop operation.

```swift
@MainActor @preconcurrency func draggable<T>(_ payload: @autoclosure @escaping () -> T) -> some TableRowContent<Self.TableRowValue> where T : Transferable
```

## Parameters

**payload**

A closure that returns a single instance or a value conforming to [Transferable](/documentation/CoreTransferable/Transferable) that represents the draggable data from this view.



## Return Value

A row that activates this row as the source of a drag and drop operation.

## Discussion

Applying the `draggable(_:)` modifier adds the appropriate gestures for drag and drop to this row.

## Managing interaction

- [dropDestination(for:action:)](/documentation/swiftui/tablerowcontent/dropdestination(for:action:))
- [onHover(perform:)](/documentation/swiftui/tablerowcontent/onhover(perform:))
- [itemProvider(_:)](/documentation/swiftui/tablerowcontent/itemprovider(_:))
- [ItemProviderTableRowModifier](/documentation/swiftui/itemprovidertablerowmodifier)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
