---
title: init(_:id:editActions:selection:rowContent:)
description: Creates a list that computes its rows on demand from an underlying collection of identifiable data, enables editing the collection, and requires a selection of a single row.
source: https://developer.apple.com/documentation/swiftui/list/init(_:id:editactions:selection:rowcontent:)
timestamp: 2025-10-29T00:12:49.814Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [list](/documentation/swiftui/list)

**Initializer**

# init(_:id:editActions:selection:rowContent:)

**Available on:** macOS 13.0+

> Creates a list that computes its rows on demand from an underlying collection of identifiable data, enables editing the collection, and requires a selection of a single row.

```swift
@MainActor @preconcurrency init<Data, ID, RowContent>(_ data: Binding<Data>, id: KeyPath<Data.Element, ID>, editActions: EditActions<Data>, selection: Binding<SelectionValue>, @ViewBuilder rowContent: @escaping (Binding<Data.Element>) -> RowContent) where Content == ForEach<IndexedIdentifierCollection<Data, ID>, ID, EditableCollectionContent<RowContent, Data>>, Data : MutableCollection, Data : RandomAccessCollection, ID : Hashable, RowContent : View, Data.Index : Hashable
```

## Parameters

**data**

The identifiable data for computing and to be edited by the list.



**id**

The key path to the data model’s identifier.



**editActions**

The edit actions that are synthesized on `data`.



**selection**

A binding to a non optional selected value.



**rowContent**

A view builder that creates the view for a single row of



## Discussion

The following example creates a list to display a collection of favorite foods allowing the user to delete or move elements from the collection, and selects a single row.

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
- [init(_:editActions:selection:rowContent:)](/documentation/swiftui/list/init(_:editactions:selection:rowcontent:))
- [init(_:id:editActions:rowContent:)](/documentation/swiftui/list/init(_:id:editactions:rowcontent:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
