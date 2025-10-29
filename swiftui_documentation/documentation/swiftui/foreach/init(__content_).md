---
title: init(_:content:)
description: Creates an instance that uniquely identifies and creates map content across updates based on the identity of the underlying data.
source: https://developer.apple.com/documentation/swiftui/foreach/init(_:content:)
timestamp: 2025-10-29T00:13:16.624Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [foreach](/documentation/swiftui/foreach)

**Initializer**

# init(_:content:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Creates an instance that uniquely identifies and creates map content across updates based on the identity of the underlying data.

```swift
@MainActor init(_ data: Data, @MapContentBuilder content: @escaping (Data.Element) -> Content) where ID == Data.Element.ID, Data.Element : Identifiable
```

## Parameters

**data**

The identified data that the [For Each](/documentation/swiftui/foreach) instance uses to create map content dynamically.



**content**

The map content builder that creates map content dynamically.



## Discussion

It’s important that the `id` of a data element doesn’t change unless you replace the data element with a new data element that has a new identity. If the `id` of a data element changes, the content view generated from that data element loses any current state and animations.

## Creating a collection

- [init(_:)](/documentation/swiftui/foreach/init(_:))
- [init(_:id:content:)](/documentation/swiftui/foreach/init(_:id:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
