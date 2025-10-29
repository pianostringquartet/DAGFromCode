---
title: init(destinationName:tag:selection:label:)
description: Creates a navigation link that presents a view from a WatchKit storyboard when a bound selection variable matches a value you provide.
source: https://developer.apple.com/documentation/swiftui/navigationlink/init(destinationname:tag:selection:label:)
timestamp: 2025-10-29T00:13:29.273Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationlink](/documentation/swiftui/navigationlink)

**Initializer**

# init(destinationName:tag:selection:label:)

**Available on:** watchOS 6.0+

> Creates a navigation link that presents a view from a WatchKit storyboard when a bound selection variable matches a value you provide.

```swift
nonisolated init<V>(destinationName: String, tag: V, selection: Binding<V?>, @ViewBuilder label: () -> Label) where V : Hashable
```

## Parameters

**destinationName**

The storyboard name of a view for the navigation link to present.



**tag**

The value of `selection` that causes the link to present `destination`.



**selection**

A bound variable that causes the link to present `destination` when `selection` becomes equal to `tag`.



**label**

A view builder to produce a label describing the `destination` to present.



## Creating links for WatchKit

- [init(destinationName:isActive:label:)](/documentation/swiftui/navigationlink/init(destinationname:isactive:label:))
- [init(destinationName:label:)](/documentation/swiftui/navigationlink/init(destinationname:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
