---
title: init(_:children:rowContent:)
description: Creates a hierarchical list that computes its rows on demand from a binding to an underlying collection of identifiable data.
source: https://developer.apple.com/documentation/swiftui/list/init(_:children:rowcontent:)
timestamp: 2025-10-29T00:13:14.624Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [list](/documentation/swiftui/list)

**Initializer**

# init(_:children:rowContent:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> Creates a hierarchical list that computes its rows on demand from a binding to an underlying collection of identifiable data.

```swift
@MainActor @preconcurrency init<Data, RowContent>(_ data: Binding<Data>, children: WritableKeyPath<Data.Element, Data?>, @ViewBuilder rowContent: @escaping (Binding<Data.Element>) -> RowContent) where Content == OutlineGroup<Binding<Data>, Data.Element.ID, RowContent, RowContent, DisclosureGroup<RowContent, OutlineSubgroupChildren>>, Data : MutableCollection, Data : RandomAccessCollection, RowContent : View, Data.Element : Identifiable
```

## Parameters

**data**

A collection of identifiable data for computing the list.



**children**

A key path to a property whose non-`nil` value gives the children of `data`. A non-`nil` but empty value denotes a node capable of having children that is currently childless, such as an empty directory in a file system. On the other hand, if the property at the key path is `nil`, then `data` is treated as a leaf node in the tree, like a regular file in a file system.



**rowContent**

A view builder that creates the view for a single row of the list.



## Creating a list from hierarchical data

- [init(_:children:selection:rowContent:)](/documentation/swiftui/list/init(_:children:selection:rowcontent:))
- [init(_:id:children:rowContent:)](/documentation/swiftui/list/init(_:id:children:rowcontent:))
- [init(_:id:children:selection:rowContent:)](/documentation/swiftui/list/init(_:id:children:selection:rowcontent:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
