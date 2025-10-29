---
title: init(_:id:content:)
description: Creates an instance that uniquely identifies and creates slider ticks across updates based on the provided key path to the underlying data’s identifier.
source: https://developer.apple.com/documentation/swiftui/slidertickcontentforeach/init(_:id:content:)
timestamp: 2025-10-29T00:12:26.578Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [slidertickcontentforeach](/documentation/swiftui/slidertickcontentforeach)

**Initializer**

# init(_:id:content:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Creates an instance that uniquely identifies and creates slider ticks across updates based on the provided key path to the underlying data’s identifier.

```swift
nonisolated init<V>(_ data: Data, id: KeyPath<Data.Element, ID>, @SliderTickBuilder<V> content: @escaping (Data.Element) -> Content) where V == Data.Element, Data.Element == Content.Value
```

## Parameters

**data**

The data that the [For Each](/documentation/swiftui/foreach) instance uses to create mark items dynamically.



**id**

The key path to the provided data’s identifier.



**content**

The builder that creates ticks dynamically.



## Discussion

It’s important that the `id` of a data element doesn’t change, unless SwiftUI considers the data element to have been replaced with a new data element that has a new identity. If the `id` of a data element changes, then the marks generated from that data element will lose any current state and animations.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
