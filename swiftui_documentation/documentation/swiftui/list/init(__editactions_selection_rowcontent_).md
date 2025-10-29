---
title: init(_:editActions:selection:rowContent:)
description: Creates a list that computes its rows on demand from an underlying collection of identifiable data, enables editing the collection, and requires a selection of a single row.
source: https://developer.apple.com/documentation/swiftui/list/init(_:editactions:selection:rowcontent:)
timestamp: 2025-10-29T00:14:59.415Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [list](/documentation/swiftui/list)

**Initializer**

# init(_:editActions:selection:rowContent:)

**Available on:** macOS 13.0+

> Creates a list that computes its rows on demand from an underlying collection of identifiable data, enables editing the collection, and requires a selection of a single row.

```swift
@MainActor @preconcurrency init<Data, RowContent>(_ data: Binding<Data>, editActions: EditActions<Data>, selection: Binding<SelectionValue>, @ViewBuilder rowContent: @escaping (Binding<Data.Element>) -> RowContent) where Content == ForEach<IndexedIdentifierCollection<Data, Data.Element.ID>, Data.Element.ID, EditableCollectionContent<RowContent, Data>>, Data : MutableCollection, Data : RandomAccessCollection, RowContent : View, Data.Element : Identifiable, Data.Index : Hashable
```

## Parameters

**data**

The identifiable data for computing the list.



**editActions**

The edit actions that are synthesized on `data`.



**selection**

A binding to a non optional selected value.



**rowContent**

A view builder that creates the view for a single row of the list.



## Discussion

The following example creates a list to display a collection of favorite foods allowing the user to delete or move elements from the collection, and select a single element.

```swift
List(
    $foods,
    editActions: [.delete, .move],
    selection: $selectedFood
) { $food in
   HStack {
       Text(food.name)
       Toggle("Favorite", isOn: $food.isFavorite)
   }
}
```

Use [deleteDisabled(_:)](/documentation/swiftui/view/deletedisabled(_:)) and [moveDisabled(_:)](/documentation/swiftui/view/movedisabled(_:)) to disable respectively delete or move actions on a per-row basis.

Explicit `DynamicViewContent.onDelete(perform:)`, `DynamicViewContent.onMove(perform:)`, or `View.swipeActions(edge:allowsFullSwipe:content:)` modifiers will override any synthesized action

## Creating a list from editable data

- [init(_:editActions:rowContent:)](/documentation/swiftui/list/init(_:editactions:rowcontent:))
- [init(_:id:editActions:rowContent:)](/documentation/swiftui/list/init(_:id:editactions:rowcontent:))
- [init(_:id:editActions:selection:rowContent:)](/documentation/swiftui/list/init(_:id:editactions:selection:rowcontent:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
