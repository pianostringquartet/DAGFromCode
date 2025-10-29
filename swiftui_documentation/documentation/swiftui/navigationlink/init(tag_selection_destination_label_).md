---
title: init(tag:selection:destination:label:)
description: Creates a navigation link that presents the destination view when a bound selection variable equals a given tag value.
source: https://developer.apple.com/documentation/swiftui/navigationlink/init(tag:selection:destination:label:)
timestamp: 2025-10-29T00:14:23.288Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationlink](/documentation/swiftui/navigationlink)

**Initializer**

# init(tag:selection:destination:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a navigation link that presents the destination view when a bound selection variable equals a given tag value.

```swift
init<V>(tag: V, selection: Binding<V?>, @ViewBuilder destination: () -> Destination, @ViewBuilder label: () -> Label) where V : Hashable
```

## Parameters

**tag**

The value of `selection` that causes the link to present `destination`.



**selection**

A bound variable that causes the link to present `destination` when `selection` becomes equal to `tag`.



**destination**

A view for the navigation link to present.



**label**

A view builder to produce a label describing the `destination` to present.



## Creating links with view builders

- [init(_:isActive:destination:)](/documentation/swiftui/navigationlink/init(_:isactive:destination:))
- [init(isActive:destination:label:)](/documentation/swiftui/navigationlink/init(isactive:destination:label:))
- [init(_:tag:selection:destination:)](/documentation/swiftui/navigationlink/init(_:tag:selection:destination:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
