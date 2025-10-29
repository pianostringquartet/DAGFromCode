---
title: init(_:id:children:selection:rowContent:)
description: Creates a hierarchical list that identifies its rows based on a key path to the identifier of the underlying data and allowing users to have exactly one row always selected.
source: https://developer.apple.com/documentation/swiftui/list/init(_:id:children:selection:rowcontent:)
timestamp: 2025-10-29T00:09:57.525Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [list](/documentation/swiftui/list)

**Initializer**

# init(_:id:children:selection:rowContent:)

**Available on:** macOS 13.0+

> Creates a hierarchical list that identifies its rows based on a key path to the identifier of the underlying data and allowing users to have exactly one row always selected.

```swift
@MainActor @preconcurrency init<Data, ID, RowContent>(_ data: Binding<Data>, id: KeyPath<Data.Element, ID>, children: WritableKeyPath<Data.Element, Data?>, selection: Binding<SelectionValue>, @ViewBuilder rowContent: @escaping (Binding<Data.Element>) -> RowContent) where Content == OutlineGroup<Binding<Data>, ID, RowContent, RowContent, DisclosureGroup<RowContent, OutlineSubgroupChildren>>, Data : MutableCollection, Data : RandomAccessCollection, ID : Hashable, RowContent : View
```

## Parameters

**data**

The data for populating the list.



**id**

The key path to the data model’s identifier.



**children**

A key path to a property whose non-`nil` value gives the children of `data`. A non-`nil` but empty value denotes a node capable of having children that is currently childless, such as an empty directory in a file system. On the other hand, if the property at the key path is `nil`, then `data` is treated as a leaf node in the tree, like a regular file in a file system.



**selection**

A binding to a non optional selected value.



**rowContent**

A view builder that creates the view for a single row of the list.



## Creating a list from hierarchical data

- [init(_:children:rowContent:)](/documentation/swiftui/list/init(_:children:rowcontent:))
- [init(_:children:selection:rowContent:)](/documentation/swiftui/list/init(_:children:selection:rowcontent:))
- [init(_:id:children:rowContent:)](/documentation/swiftui/list/init(_:id:children:rowcontent:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
