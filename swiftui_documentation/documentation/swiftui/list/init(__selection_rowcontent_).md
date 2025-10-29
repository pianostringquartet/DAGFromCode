---
title: init(_:selection:rowContent:)
description: Creates a list that computes its rows on demand from an underlying collection of identifiable data, optionally allowing users to select a single row.
source: https://developer.apple.com/documentation/swiftui/list/init(_:selection:rowcontent:)
timestamp: 2025-10-29T00:10:23.115Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [list](/documentation/swiftui/list)

**Initializer**

# init(_:selection:rowContent:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+

> Creates a list that computes its rows on demand from an underlying collection of identifiable data, optionally allowing users to select a single row.

```swift
@MainActor @preconcurrency init<Data, RowContent>(_ data: Binding<Data>, selection: Binding<SelectionValue?>?, @ViewBuilder rowContent: @escaping (Binding<Data.Element>) -> RowContent) where Content == ForEach<LazyMapSequence<Data.Indices, (Data.Index, Data.Element.ID)>, Data.Element.ID, RowContent>, Data : MutableCollection, Data : RandomAccessCollection, RowContent : View, Data.Element : Identifiable, Data.Index : Hashable
```

## Parameters

**data**

The identifiable data for computing the list.



**selection**

A binding to a selected value.



**rowContent**

A view builder that creates the view for a single row of the list.



## Creating a list from enumerated data

- [init(_:rowContent:)](/documentation/swiftui/list/init(_:rowcontent:))
- [init(_:id:rowContent:)](/documentation/swiftui/list/init(_:id:rowcontent:))
- [init(_:id:selection:rowContent:)](/documentation/swiftui/list/init(_:id:selection:rowcontent:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
