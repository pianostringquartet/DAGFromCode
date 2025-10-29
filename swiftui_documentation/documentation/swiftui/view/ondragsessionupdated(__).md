---
title: onDragSessionUpdated(_:)
description: Specifies an action to perform on each update of an ongoing dragging operation activated by  or anther drag modifiers.
source: https://developer.apple.com/documentation/swiftui/view/ondragsessionupdated(_:)
timestamp: 2025-10-29T00:12:54.717Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onDragSessionUpdated(_:)

**Available on:** macOS 26.0+

> Specifies an action to perform on each update of an ongoing dragging operation activated by  or anther drag modifiers.

```swift
nonisolated func onDragSessionUpdated(_ onUpdate: @escaping (DragSession) -> Void) -> some View
```

## Discussion

Below is an example of a view that displays a book and supports dragging to copy, move, and delete. If the session ends with moving or deleting the item, in the `onUpdate` closure, the view lets the model layer know that the book should be deleted from the source.

```swift
   struct DraggableBookView: View {
       var id: UUID

       var body: some View {
           BookView()
               .draggable(
                   configuration: DragConfiguration(
                       operationsWithinApp: .init(allowMove: true, allowDelete: true),
                       operationsOutsideApp: .init(allowMove: true, allowDelete: true)
                   ), Book(id: id))
               .onDragSessionUpdated { session in
                   switch session.phase {
                   case .ended(at: _, with: let operation):
                       if operation == .move || operation == .delete {
                           if let id = session.draggedItemIDs(type: UUID.self).first {
                               removeBook(id: id)
                           }
                       }
                   default:
                       break
                   }
               }
       }
   }

   func removeBook(id: UUID) { }
```

The `onUpdate` closure is called when the closest drag session in the child view hierarchy becomes active.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
