---
title: init(_:)
description: Creates an instance that uniquely identifies and creates table rows across updates based on the identity of the underlying data.
source: https://developer.apple.com/documentation/swiftui/foreach/init(_:)
timestamp: 2025-10-29T00:15:20.043Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [foreach](/documentation/swiftui/foreach)

**Initializer**

# init(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 12.0+, visionOS 1.0+

> Creates an instance that uniquely identifies and creates table rows across updates based on the identity of the underlying data.

```swift
nonisolated init(_ data: Data) where ID == Data.Element.ID, Content == TableRow<Data.Element>, Data.Element : Identifiable
```

## Parameters

**data**

The identified data that the [For Each](/documentation/swiftui/foreach) instance uses to create table rows dynamically.



## Discussion

The following example creates a `Person` type that conforms to [Identifiable](/documentation/Swift/Identifiable), and an array of this type called `people`. A `ForEach` instance iterates over the array, producing new [Table Row](/documentation/swiftui/tablerow) instances implicitly.

```swift
private struct Person: Identifiable {
    var id = UUID()
    var name: String
}

@State private var people: [Person] = /* ... */

Table(of: Person.self) {
    TableColumn("ID", value: \.id.uuidString)
    TableColumn("Name", value: \.name)
} rows: {
    Section("Team") {
        /* This is equivalent to the line below:
        ForEach(people) { TableRow($0) }
        */
        ForEach(people)
    }
}
```

## Creating a collection

- [init(_:content:)](/documentation/swiftui/foreach/init(_:content:))
- [init(_:id:content:)](/documentation/swiftui/foreach/init(_:id:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
