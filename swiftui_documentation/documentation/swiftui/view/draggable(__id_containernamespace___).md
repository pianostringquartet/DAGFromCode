---
title: draggable(_:id:containerNamespace:_:)
description: Activates this view as the source of a drag and drop operation, allowing to provide optional payload and specify the namespace of the drag container this view belongs to.
source: https://developer.apple.com/documentation/swiftui/view/draggable(_:id:containernamespace:_:)
timestamp: 2025-10-29T00:09:52.092Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# draggable(_:id:containerNamespace:_:)

**Available on:** macOS 26.0+

> Activates this view as the source of a drag and drop operation, allowing to provide optional payload and specify the namespace of the drag container this view belongs to.

```swift
nonisolated func draggable<Item, ItemID>(_ itemType: Item.Type = Item.self, id: KeyPath<Item, ItemID>, containerNamespace: Namespace.ID? = nil, _ payload: @escaping () -> Item?) -> some View where Item : Transferable, ItemID : Hashable, ItemID : Sendable
```

## Parameters

**itemType**

A type of the dragged item.



**id**

An key path of the identifier of an item.



**containerNamespace**

A namespace of the associated drag container.



**payload**

A closure that returns a single instance or a value conforming to [Transferable](/documentation/CoreTransferable/Transferable) that represents the draggable data from this view.



## Return Value

A view that activates this view as the source of a drag and drop operation, beginning with user gesture input.

## Discussion

Applying the `draggable(_:id:containerNamespace:_:)` modifier adds the appropriate gestures for drag and drop to this view. When a drag operation begins, a rendering of this view is generated and used as the preview image.

```swift
   var fruits: [Fruit]

   var body: some View {
       ScrollView {
           VStack {
               ForEach(fruits) { fruit in
                   FruitView(fruit)
                       .draggable(Fruit.self, id: \.dragID) {
                           fruit.supportsDrag ? fruit : nil
                       }
               }
           }
       }
   }

   struct Fruit: Transferable {
       var supportsDrag: Bool
       var dragID: UUID
   }
```

If the draggable view is enclosed in a container, it participates in container drag-and-drop sessions:

```swift
   var fruits: [Fruit]
   var selectedFruits: [UUID]

   var body: some View {
       ScrollView {
           VStack {
               ForEach(fruits) { fruit in
                   FruitView(fruit)
                       .draggable(Fruit.self, id: \.dragID) {
                           fruit.supportsDrag ? fruit : nil
                       }
               }
           }
       }
       .dragContainer(for: Fruit.self) { identifiers in
           fruits(with: identifiers)
       }
       .dragContainerSelection(selectedFruits)
   }

   func fruits(with: [UUID]) -> [Fruit] { ... }
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
