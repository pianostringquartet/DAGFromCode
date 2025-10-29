---
title: dropDestination(for:action:)
description: Defines the entire row as a destination of a drag and drop operation that handles the dropped content with a closure that you specify.
source: https://developer.apple.com/documentation/swiftui/tablerowcontent/dropdestination(for:action:)
timestamp: 2025-10-29T00:15:30.653Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tablerowcontent](/documentation/swiftui/tablerowcontent)

**Instance Method**

# dropDestination(for:action:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Defines the entire row as a destination of a drag and drop operation that handles the dropped content with a closure that you specify.

```swift
@MainActor @preconcurrency func dropDestination<T>(for payloadType: T.Type = T.self, action: @escaping ([T]) -> Void) -> some TableRowContent<Self.TableRowValue> where T : Transferable
```

## Parameters

**payloadType**

The expected type of the dropped models.



**action**

A closure that takes the dropped content and responds with `true` if the drop operation was successful; otherwise, return `false`.



## Return Value

A row that provides a drop destination for a drag operation of the specified type.

## Managing interaction

- [draggable(_:)](/documentation/swiftui/tablerowcontent/draggable(_:))
- [onHover(perform:)](/documentation/swiftui/tablerowcontent/onhover(perform:))
- [itemProvider(_:)](/documentation/swiftui/tablerowcontent/itemprovider(_:))
- [ItemProviderTableRowModifier](/documentation/swiftui/itemprovidertablerowmodifier)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
