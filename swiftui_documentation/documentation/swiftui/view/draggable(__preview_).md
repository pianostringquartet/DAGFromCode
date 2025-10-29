---
title: draggable(_:preview:)
description: Activates this view as the source of a drag and drop operation.
source: https://developer.apple.com/documentation/swiftui/view/draggable(_:preview:)
timestamp: 2025-10-29T00:10:38.506Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# draggable(_:preview:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Activates this view as the source of a drag and drop operation.

```swift
nonisolated func draggable<V, T>(_ payload: @autoclosure @escaping () -> T, @ViewBuilder preview: () -> V) -> some View where V : View, T : Transferable
```

## Parameters

**payload**

A closure that returns a single class instance or a value conforming to `Transferable` that represents the draggable data from this view.



**preview**

A [View](/documentation/swiftui/view) to use as the source for the dragging preview, once the drag operation has begun. The preview is centered over the source view.



## Return Value

A view that activates this view as the source of a drag and drop operation, beginning with user gesture input.

## Discussion

Applying the `draggable(_:preview:)` modifier adds the appropriate gestures for drag and drop to this view. When a drag operation begins, a rendering of `preview` is generated and used as the preview image.

```swift
var title: String
var body: some View {
    Color.pink
        .frame(width: 400, height: 400)
        .draggable(title) {
             Text("Drop me")
         }
}
```

To customize the lift preview, shown while the system transitions to show your custom `preview`, apply a [contentShape(_:_:eoFill:)](/documentation/swiftui/view/contentshape(_:_:eofill:)) with a [drag Preview](/documentation/swiftui/contentshapekinds/dragpreview) kind. For example, you can change the preview’s corner radius or use a nested view as the preview.

## Moving transferable items

- [draggable(_:)](/documentation/swiftui/view/draggable(_:))
- [dropDestination(for:action:isTargeted:)](/documentation/swiftui/view/dropdestination(for:action:istargeted:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
