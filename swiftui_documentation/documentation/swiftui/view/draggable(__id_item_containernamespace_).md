---
title: draggable(_:id:item:containerNamespace:)
description: Activates this view as the source of a drag and drop operation, allowing to provide optional payload and specify the namespace of the drag container this view belongs to.
source: https://developer.apple.com/documentation/swiftui/view/draggable(_:id:item:containernamespace:)
timestamp: 2025-10-29T00:09:22.775Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# draggable(_:id:item:containerNamespace:)

**Available on:** macOS 26.0+

> Activates this view as the source of a drag and drop operation, allowing to provide optional payload and specify the namespace of the drag container this view belongs to.

```swift
nonisolated func draggable<Item, ItemID>(_ itemType: Item.Type = Item.self, id: KeyPath<Item, ItemID>, item: @autoclosure @escaping () -> Item?, containerNamespace: Namespace.ID? = nil) -> some View where Item : Transferable, ItemID : Hashable, ItemID : Sendable
```

## Parameters

**itemType**

A type of the dragged item.



**id**

An identifier of an item.



**containerNamespace**

A namespace of the associated drag container.



## Return Value

A view that activates this view as the source of a drag and drop operation, beginning with user gesture input.

## Discussion

Applying the `draggable(_:containerNamespace_:)` modifier adds the appropriate gestures for drag and drop to this view. When a drag operation begins, a rendering of this view is generated and used as the preview image.

To customize the default preview, apply a [contentShape(_:_:eoFill:)](/documentation/swiftui/view/contentshape(_:_:eofill:)) with a [drag Preview](/documentation/swiftui/contentshapekinds/dragpreview) kind. For example, you can change the preview’s corner radius or use a nested view as the preview.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
