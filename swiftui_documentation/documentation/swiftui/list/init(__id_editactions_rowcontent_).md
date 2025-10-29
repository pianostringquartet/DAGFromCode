---
title: init(_:id:editActions:rowContent:)
description: Creates a list that computes its rows on demand from an underlying collection of identifiable data and enables editing the collection.
source: https://developer.apple.com/documentation/swiftui/list/init(_:id:editactions:rowcontent:)
timestamp: 2025-10-29T00:10:18.879Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [list](/documentation/swiftui/list)

**Initializer**

# init(_:id:editActions:rowContent:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a list that computes its rows on demand from an underlying collection of identifiable data and enables editing the collection.

```swift
@MainActor @preconcurrency init<Data, ID, RowContent>(_ data: Binding<Data>, id: KeyPath<Data.Element, ID>, editActions: EditActions<Data>, @ViewBuilder rowContent: @escaping (Binding<Data.Element>) -> RowContent) where Content == ForEach<IndexedIdentifierCollection<Data, ID>, ID, EditableCollectionContent<RowContent, Data>>, Data : MutableCollection, Data : RandomAccessCollection, ID : Hashable, RowContent : View, Data.Index : Hashable
```

## Parameters

**data**

A collection of identifiable data for computing the list.



**id**

The key path to the data model’s identifier.



**editActions**

The edit actions that are synthesized on `data`.



**rowContent**

A view builder that creates the view for a single row of the list.



## Discussion

The following example creates a list to display a collection of favorite foods allowing the user to delete or move elements from the collection.

```swift
List($foods, editActions: [.delete, .move]) { $food in
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
- [init(_:id:editActions:selection:rowContent:)](/documentation/swiftui/list/init(_:id:editactions:selection:rowcontent:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
