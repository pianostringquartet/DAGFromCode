---
title: draggable(containerItemID:containerNamespace:)
description: Inside a drag container, activates this view as the source of a drag and drop operation. Supports lazy drag containers.
source: https://developer.apple.com/documentation/swiftui/view/draggable(containeritemid:containernamespace:)
timestamp: 2025-10-29T00:15:06.263Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# draggable(containerItemID:containerNamespace:)

**Available on:** macOS 26.0+

> Inside a drag container, activates this view as the source of a drag and drop operation. Supports lazy drag containers.

```swift
nonisolated func draggable<ItemID>(containerItemID: ItemID, containerNamespace: Namespace.ID? = nil) -> some View where ItemID : Hashable, ItemID : Sendable
```

## Parameters

**containerItemID**

An identifier of the associated drag payload.



**containerNamespace**

A namespace of the associated drag container.



## Return Value

A view that activates this view as the source of a drag and drop operation, beginning with user gesture input.

## Discussion

This modifier marks the view as a draggable element of an enclosing `dragContainer(_:containerNamespace:_:)`. Since this modifier does not require to provide the payload, only its identifier, it works lazily (the framework asks to provide the actual dragged items only when drag starts; also, the framework doesn’t have to render a view in order to access its payload).

Applying the `draggable(containerItemID:containerNamespace:)` modifier to a view inside a drag container adds the appropriate gestures for drag and drop to this view. SwiftUI generates a default drag preview for drag.

Below, each `FruitView` is assigned an identifier: a code of a fruit it represents. When dragging begins, the `dragContainer` closure is called with the codes of the selected fruit, or, if a user drags a view that is not selected, the closure receives the identifier of that view as a parameter.

```swift
   var fruits: [Fruit]
   var selectedFruitCodes: [UUID]

   var body: some View {
       VStack {
           ForEach(fruits) { fruit in
               .draggable(containerItemID: fruit.code)
       }
       .dragContainer { codes in
           fruits(with: codes)
       }
       .dragContainerSelection(selectedFruitCodes)
   }

   func fruits(with codes: [UUID]) -> [Fruit] { ... }

   struct Fruit: Transferable {
       var code: UUID
       ...
   }
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
