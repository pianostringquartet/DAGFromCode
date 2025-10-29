---
title: draggable(_:item:containerNamespace:)
description: Activates this view as the source of a drag and drop operation, allowing to provide optional identifiable payload and specify the namespace of the drag container this view belongs to.
source: https://developer.apple.com/documentation/swiftui/view/draggable(_:item:containernamespace:)
timestamp: 2025-10-29T00:11:39.247Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# draggable(_:item:containerNamespace:)

**Available on:** macOS 26.0+

> Activates this view as the source of a drag and drop operation, allowing to provide optional identifiable payload and specify the namespace of the drag container this view belongs to.

```swift
nonisolated func draggable<Item>(_ itemType: Item.Type = Item.self, item: @autoclosure @escaping () -> Item?, containerNamespace: Namespace.ID? = nil) -> some View where Item : Transferable, Item : Identifiable, Item.ID : Sendable
```

## Parameters

**itemType**

A type of the dragged item.



**containerNamespace**

A namespace of the associated drag container.



## Return Value

A view that activates this view as the source of a drag and drop operation, beginning with user gesture input.

## Discussion

Applying the `draggable(_:_:containerNamespace:)` modifier adds the appropriate gestures for drag and drop to this view. When a drag operation begins, a rendering of this view is generated and used as the preview image.

If the view is enclosed in a `dragContainer(for:in:_)`, the view becomes its draggable element, and the item’s identifier is used as drag payload identifier.

```swift
   var fruits: [Fruit]
   var selectedFruits: [Fruit.ID]

   var body: some View {
       ScrollView {
           VStack {
               ForEach(fruits) { fruit in
                   FruitView(fruit)
                       .draggable(fruit)
               }
           }
       }
       .dragContainer(for: Fruit.self) { identifiers in
           fruits(with: identifiers)
       }
   }

   func fruits(with: [Fruit.ID]) -> [Fruit] { ... }
   struct Fruit: Identifiable, Transferable { ... }
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
