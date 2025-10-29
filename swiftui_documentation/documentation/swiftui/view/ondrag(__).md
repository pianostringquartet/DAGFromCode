---
title: onDrag(_:)
description: Activates this view as the source of a drag and drop operation.
source: https://developer.apple.com/documentation/swiftui/view/ondrag(_:)
timestamp: 2025-10-29T00:10:36.454Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onDrag(_:)

**Available on:** iOS 13.4+, iPadOS 13.4+, Mac Catalyst 13.4+, macOS 10.15+, visionOS 1.0+

> Activates this view as the source of a drag and drop operation.

```swift
nonisolated func onDrag(_ data: @escaping () -> NSItemProvider) -> some View
```

## Parameters

**data**

A closure that returns a single [NSItem Provider](/documentation/Foundation/NSItemProvider) that represents the draggable data from this view.



## Return Value

A view that activates this view as the source of a drag and drop operation, beginning with user gesture input.

## Discussion

Applying the `onDrag(_:)` modifier adds the appropriate gestures for drag and drop to this view. When a drag operation begins, a rendering of this view is generated and used as the preview image.

To customize the default preview, apply a [contentShape(_:_:eoFill:)](/documentation/swiftui/view/contentshape(_:_:eofill:)) with a [drag Preview](/documentation/swiftui/contentshapekinds/dragpreview) kind. For example, you can change the preview’s corner radius or use a nested view as the preview.

If you want to show a different preview, you can use [onDrag(_:preview:)](/documentation/swiftui/view/ondrag(_:preview:)).

## Moving items using item providers

- [itemProvider(_:)](/documentation/swiftui/view/itemprovider(_:))
- [onDrag(_:preview:)](/documentation/swiftui/view/ondrag(_:preview:))
- [onDrop(of:isTargeted:perform:)](/documentation/swiftui/view/ondrop(of:istargeted:perform:))
- [onDrop(of:delegate:)](/documentation/swiftui/view/ondrop(of:delegate:))
- [DropDelegate](/documentation/swiftui/dropdelegate)
- [DropProposal](/documentation/swiftui/dropproposal)
- [DropOperation](/documentation/swiftui/dropoperation)
- [DropInfo](/documentation/swiftui/dropinfo)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
