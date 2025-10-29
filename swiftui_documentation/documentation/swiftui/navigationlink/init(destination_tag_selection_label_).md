---
title: init(destination:tag:selection:label:)
description: Creates a navigation link that presents the destination view when a bound selection variable equals a given tag value.
source: https://developer.apple.com/documentation/swiftui/navigationlink/init(destination:tag:selection:label:)
timestamp: 2025-10-29T00:09:54.821Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationlink](/documentation/swiftui/navigationlink)

**Initializer**

# init(destination:tag:selection:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a navigation link that presents the destination view when a bound selection variable equals a given tag value.

```swift
init<V>(destination: Destination, tag: V, selection: Binding<V?>, @ViewBuilder label: () -> Label) where V : Hashable
```

## Parameters

**destination**

A view for the navigation link to present.



**tag**

The value of `selection` that causes the link to present `destination`.



**selection**

A bound variable that causes the link to present `destination` when `selection` becomes equal to `tag`.



**label**

A view builder to produce a label describing the `destination` to present.



## Creating links with view arguments

- [init(_:destination:isActive:)](/documentation/swiftui/navigationlink/init(_:destination:isactive:))
- [init(destination:isActive:label:)](/documentation/swiftui/navigationlink/init(destination:isactive:label:))
- [init(_:destination:tag:selection:)](/documentation/swiftui/navigationlink/init(_:destination:tag:selection:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
