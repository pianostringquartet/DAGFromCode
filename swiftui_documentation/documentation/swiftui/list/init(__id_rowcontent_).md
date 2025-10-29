---
title: init(_:id:rowContent:)
description: Creates a list that identifies its rows based on a key path to the identifier of the underlying data.
source: https://developer.apple.com/documentation/swiftui/list/init(_:id:rowcontent:)
timestamp: 2025-10-29T00:15:26.082Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [list](/documentation/swiftui/list)

**Initializer**

# init(_:id:rowContent:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a list that identifies its rows based on a key path to the identifier of the underlying data.

```swift
@MainActor @preconcurrency init<Data, ID, RowContent>(_ data: Binding<Data>, id: KeyPath<Data.Element, ID>, @ViewBuilder rowContent: @escaping (Binding<Data.Element>) -> RowContent) where Content == ForEach<LazyMapSequence<Data.Indices, (Data.Index, ID)>, ID, RowContent>, Data : MutableCollection, Data : RandomAccessCollection, ID : Hashable, RowContent : View, Data.Index : Hashable
```

## Parameters

**data**

The data for populating the list.



**id**

The key path to the data model’s identifier.



**rowContent**

A view builder that creates the view for a single row of the list.



## Creating a list from enumerated data

- [init(_:rowContent:)](/documentation/swiftui/list/init(_:rowcontent:))
- [init(_:selection:rowContent:)](/documentation/swiftui/list/init(_:selection:rowcontent:))
- [init(_:id:selection:rowContent:)](/documentation/swiftui/list/init(_:id:selection:rowcontent:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
