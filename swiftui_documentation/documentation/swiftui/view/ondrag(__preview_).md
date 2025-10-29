---
title: onDrag(_:preview:)
description: Activates this view as the source of a drag and drop operation.
source: https://developer.apple.com/documentation/swiftui/view/ondrag(_:preview:)
timestamp: 2025-10-29T00:09:46.962Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onDrag(_:preview:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> Activates this view as the source of a drag and drop operation.

```swift
nonisolated func onDrag<V>(_ data: @escaping () -> NSItemProvider, @ViewBuilder preview: () -> V) -> some View where V : View
```

## Parameters

**data**

A closure that returns a single [NSItem Provider](/documentation/Foundation/NSItemProvider) that represents the draggable data from this view.



**preview**

A [View](/documentation/swiftui/view) to use as the source for the dragging preview, once the drag operation has begun. The preview is centered over the source view.



## Return Value

A view that activates this view as the source of a drag-and- drop operation, beginning with user gesture input.

## Discussion

Applying the `onDrag(_:preview:)` modifier adds the appropriate gestures for drag and drop to this view. When a drag operation begins, a rendering of `preview` is generated and used as the preview image.

To customize the lift preview, shown while the system transitions to show your custom `preview`, apply a [contentShape(_:_:eoFill:)](/documentation/swiftui/view/contentshape(_:_:eofill:)) with a [drag Preview](/documentation/swiftui/contentshapekinds/dragpreview) kind. For example, you can change the preview’s corner radius or use a nested view as the preview.

## Moving items using item providers

- [itemProvider(_:)](/documentation/swiftui/view/itemprovider(_:))
- [onDrag(_:)](/documentation/swiftui/view/ondrag(_:))
- [onDrop(of:isTargeted:perform:)](/documentation/swiftui/view/ondrop(of:istargeted:perform:))
- [onDrop(of:delegate:)](/documentation/swiftui/view/ondrop(of:delegate:))
- [DropDelegate](/documentation/swiftui/dropdelegate)
- [DropProposal](/documentation/swiftui/dropproposal)
- [DropOperation](/documentation/swiftui/dropoperation)
- [DropInfo](/documentation/swiftui/dropinfo)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
