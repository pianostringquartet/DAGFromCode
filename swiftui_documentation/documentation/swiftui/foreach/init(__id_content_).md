---
title: init(_:id:content:)
description: Creates an instance that uniquely identifies and creates map content across updates based on the provided key path to the underlying data’s identifier.
source: https://developer.apple.com/documentation/swiftui/foreach/init(_:id:content:)
timestamp: 2025-10-29T00:10:41.309Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [foreach](/documentation/swiftui/foreach)

**Initializer**

# init(_:id:content:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Creates an instance that uniquely identifies and creates map content across updates based on the provided key path to the underlying data’s identifier.

```swift
@MainActor init(_ data: Data, id: KeyPath<Data.Element, ID>, @MapContentBuilder content: @escaping (Data.Element) -> Content)
```

## Parameters

**data**

The data that the [For Each](/documentation/swiftui/foreach) instance uses to create map content dynamically.



**id**

The key path to the provided data’s identifier.



**content**

The map content builder that creates map content dynamically.



## Discussion

It’s important that the `id` of a data element doesn’t change, unless the data element has been replaced with a new data element that has a new identity. If the `id` of a data element changes, then the map content generated from that data element will lose any current state and animations.

## Creating a collection

- [init(_:)](/documentation/swiftui/foreach/init(_:))
- [init(_:content:)](/documentation/swiftui/foreach/init(_:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
