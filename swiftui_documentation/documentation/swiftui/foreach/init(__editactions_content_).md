---
title: init(_:editActions:content:)
description: Creates an instance that uniquely identifies and creates views across updates based on the identity of the underlying data.
source: https://developer.apple.com/documentation/swiftui/foreach/init(_:editactions:content:)
timestamp: 2025-10-29T00:14:53.865Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [foreach](/documentation/swiftui/foreach)

**Initializer**

# init(_:editActions:content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates an instance that uniquely identifies and creates views across updates based on the identity of the underlying data.

```swift
init<C, R>(_ data: Binding<C>, editActions: EditActions<C>, @ViewBuilder content: @escaping (Binding<C.Element>) -> R) where Data == IndexedIdentifierCollection<C, ID>, ID == C.Element.ID, Content == EditableCollectionContent<R, C>, C : MutableCollection, C : RandomAccessCollection, R : View, C.Element : Identifiable, C.Index : Hashable
```

## Parameters

**data**

The identified data that the [For Each](/documentation/swiftui/foreach) instance uses to create views dynamically and can be edited by the user.



**editActions**

The edit actions that are synthesized on `data`.



**content**

The view builder that creates views dynamically.



## Discussion

It’s important that the `id` of a data element doesn’t change unless you replace the data element with a new data element that has a new identity. If the `id` of a data element changes, the content view generated from that data element loses any current state and animations.

When placed inside a `List` the edit actions (like delete or move) can be automatically synthesized by specifying an appropriate `EditActions`.

The following example shows a list of recipes whose elements can be deleted and reordered:

```swift
List {
    ForEach($recipes, editActions: [.delete, .move]) { $recipe in
        RecipeCell($recipe)
    }
}
```

Use [deleteDisabled(_:)](/documentation/swiftui/view/deletedisabled(_:)) and [moveDisabled(_:)](/documentation/swiftui/view/movedisabled(_:)) to disable respectively delete or move actions on a per-row basis.

The following example shows a list of recipes whose elements can be deleted only if they satisfy a condition:

```swift
List {
    ForEach($recipes, editActions: .delete) { $recipe in
        RecipeCell($recipe)
            .deleteDisabled(recipe.isFromMom)
    }
}
```

Explicit `DynamicViewContent.onDelete(perform:)`, `DynamicViewContent.onMove(perform:)`, or `View.swipeActions(edge:allowsFullSwipe:content:)` modifiers will override any synthesized actions. Use this modifier if you need fine-grain control on how mutations are applied to the data driving the `ForEach`. For example, if you need to execute side effects or call into your existing model code.

## Creating an editable collection

- [init(_:id:editActions:content:)](/documentation/swiftui/foreach/init(_:id:editactions:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
