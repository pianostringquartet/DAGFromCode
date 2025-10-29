---
title: init(_:content:)
description: Creates an instance that uniquely identifies and creates slider ticks across updates based on the identity of the underlying data.
source: https://developer.apple.com/documentation/swiftui/slidertickcontentforeach/init(_:content:)
timestamp: 2025-10-29T00:10:49.212Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [slidertickcontentforeach](/documentation/swiftui/slidertickcontentforeach)

**Initializer**

# init(_:content:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Creates an instance that uniquely identifies and creates slider ticks across updates based on the identity of the underlying data.

```swift
nonisolated init<V>(_ data: Data, @SliderTickBuilder<V> content: @escaping (Data.Element) -> Content) where ID == V.ID, V : Identifiable, V == Data.Element, Data.Element == Content.Value
```

## Parameters

**data**

The identified data that the [For Each](/documentation/swiftui/foreach) instance uses to create slider ticks dynamically.



**content**

The builder that creates ticks dynamically for each element.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
