---
title: dragContainer(for:itemID:in:_:)
description: A container with draggable views.
source: https://developer.apple.com/documentation/swiftui/view/dragcontainer(for:itemid:in:_:)
timestamp: 2025-10-29T00:12:20.978Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# dragContainer(for:itemID:in:_:)

**Available on:** macOS 26.0+

> A container with draggable views.

```swift
nonisolated func dragContainer<ItemID, Item, Data>(for itemType: Item.Type = Item.self, itemID: KeyPath<Item, ItemID>, in namespace: Namespace.ID? = nil, _ payload: @escaping (Array<ItemID>) -> Data) -> some View where ItemID : Hashable, ItemID : Sendable, Item : Transferable, Item == Data.Element, Data : Collection
```

## Parameters

**itemType**

A type of the dragged items.



**itemID**

A closure that provides an item’s identifier.



**namespace**

A namespace that identifies the drag container.



**payload**

A closure which is called when a drag operation begins. As an argument, the closure receives either the identifiers of all the selected items, if the dragged item is a part of selection or only the identifier of the dragged item, if it is not part of the selection. Using the passed identifiers, put together the payload to drag, and return from the closure. Return an empty `Collection` to disable the drag.



## Return Value

A view that can be activated as the source of a drag and drop operation, beginning with user gesture input.

## Discussion

In an example below, an app presents a view with `Fruit` values. `Fruit` does not conform to `Identifiable` but uses its name as its identifier.

```swift
   @State private var fruits: [Fruit]
   @State private var selection: [String]

   var body: some View {
       VStack {
           ForEach(fruits) { fruit in
               FruitView(fruit)
                   .draggable(containerItemID: fruit.name)
           }
       }
       .dragContainer(itemID: \Fruit.name) { ids in
          fruits(with: ids)
       }
   }

   func fruits(with ids: [String]) -> [Fruit] { ... }

   struct Fruit: Transferable {
       var name: String
       ...
   }
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
