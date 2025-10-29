---
title: init(_:rowContent:)
description: Creates a list that computes its rows on demand from an underlying collection of identifiable data.
source: https://developer.apple.com/documentation/swiftui/list/init(_:rowcontent:)
timestamp: 2025-10-29T00:11:05.429Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [list](/documentation/swiftui/list)

**Initializer**

# init(_:rowContent:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a list that computes its rows on demand from an underlying collection of identifiable data.

```swift
@MainActor @preconcurrency init<Data, RowContent>(_ data: Binding<Data>, @ViewBuilder rowContent: @escaping (Binding<Data.Element>) -> RowContent) where Content == ForEach<LazyMapSequence<Data.Indices, (Data.Index, Data.Element.ID)>, Data.Element.ID, RowContent>, Data : MutableCollection, Data : RandomAccessCollection, RowContent : View, Data.Element : Identifiable, Data.Index : Hashable
```

## Parameters

**data**

A collection of identifiable data for computing the list.



**rowContent**

A view builder that creates the view for a single row of the list.



## Creating a list from enumerated data

- [init(_:selection:rowContent:)](/documentation/swiftui/list/init(_:selection:rowcontent:))
- [init(_:id:rowContent:)](/documentation/swiftui/list/init(_:id:rowcontent:))
- [init(_:id:selection:rowContent:)](/documentation/swiftui/list/init(_:id:selection:rowcontent:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
