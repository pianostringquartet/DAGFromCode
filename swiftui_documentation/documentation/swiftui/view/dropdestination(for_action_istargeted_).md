---
title: dropDestination(for:action:isTargeted:)
description: Defines the destination of a drag and drop operation that handles the dropped content with a closure that you specify.
source: https://developer.apple.com/documentation/swiftui/view/dropdestination(for:action:istargeted:)
timestamp: 2025-10-29T00:15:31.116Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# dropDestination(for:action:isTargeted:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Defines the destination of a drag and drop operation that handles the dropped content with a closure that you specify.

```swift
nonisolated func dropDestination<T>(for payloadType: T.Type = T.self, action: @escaping ([T], CGPoint) -> Bool, isTargeted: @escaping (Bool) -> Void = { _ in }) -> some View where T : Transferable
```

## Parameters

**payloadType**

The expected type of the dropped models.



**action**

A closure that takes the dropped content and responds appropriately. The first parameter to `action` contains the dropped items. The second parameter contains the drop location in this view’s coordinate space. Return `true` if the drop operation was successful; otherwise, return `false`.



**isTargeted**

A closure that is called when a drag and drop operation enters or exits the drop target area. The received value is `true` when the cursor is inside the area, and `false` when the cursor is outside.



## Return Value

A view that provides a drop destination for a drag operation of the specified type.

## Discussion

The dropped content can be provided as binary data, file URLs, or file promises.

The drop destination is the same size and position as this view.

```swift
@State private var isDropTargeted = false

var body: some View {
    Color.pink
        .frame(width: 400, height: 400)
        .dropDestination(for: String.self) { receivedTitles, location in
            animateDrop(at: location)
            process(titles: receivedTitles)
        } isTargeted: {
            isDropTargeted = $0
        }
}

func process(titles: [String]) { ... }
func animateDrop(at: CGPoint) { ... }
```

## Moving transferable items

- [draggable(_:)](/documentation/swiftui/view/draggable(_:))
- [draggable(_:preview:)](/documentation/swiftui/view/draggable(_:preview:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
