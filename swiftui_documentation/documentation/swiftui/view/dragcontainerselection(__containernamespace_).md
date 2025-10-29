---
title: dragContainerSelection(_:containerNamespace:)
description: Provides multiple item selection support for drag containers.
source: https://developer.apple.com/documentation/swiftui/view/dragcontainerselection(_:containernamespace:)
timestamp: 2025-10-29T00:12:12.909Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# dragContainerSelection(_:containerNamespace:)

**Available on:** macOS 26.0+

> Provides multiple item selection support for drag containers.

```swift
nonisolated func dragContainerSelection<ItemID>(_ selection: @autoclosure @escaping () -> Array<ItemID>, containerNamespace: Namespace.ID? = nil) -> some View where ItemID : Hashable, ItemID : Sendable
```

## Parameters

**selection**

A closure that provides identifiers of selected items.



**containerNamespace**

An optional namespace of the drag container.



## Discussion

A drag container finds the nearest enclosing `dragContainerSelection(_:containerNamespace:)` with the same item identifier type and same namespace, if specified. Drag container uses the provided selected item identifiers to determine what the drag payload should be.

If the dragged view is associated with a selected identifier, the payload should contain all the selected items. If the dragged view is not selected, the payload should not contain the whole selection, just the dragged item. With `dragContainerSelection(_:containerNamespace:)`, you get fine-grained control over what items are included in the drag payload.

```swift
    struct FruitContainer: View {
         @State private var fruits: [Fruit]
         @State private var selection: [Fruit.ID]

         var body: some View {
             VStack {
                 ForEach(fruits) { fruit in
                     FruitView(fruit)
                         .draggable(containerItemID: fruit.id)
                  }
              }
             .dragContainer(for: Fruit.self) { ids in
                 fruits(with: ids)
             }
             .dragContainerSelection(selection)
         }

       func fruits(with ids: [Fruit.ID]) -> [Fruit] { ... }

       struct Fruit: Transferable, Identifiable {
           let id: String
           ...
       }

       struct FruitView: View {
           init(_ fruit: Fruit) { ... }
       }
   }
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
