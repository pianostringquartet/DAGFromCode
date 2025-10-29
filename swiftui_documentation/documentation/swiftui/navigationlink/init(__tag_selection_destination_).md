---
title: init(_:tag:selection:destination:)
description: Creates a navigation link that presents a destination view when a bound selection variable matches a value you provide, using a text label that the link generates from a title string.
source: https://developer.apple.com/documentation/swiftui/navigationlink/init(_:tag:selection:destination:)
timestamp: 2025-10-29T00:12:29.631Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationlink](/documentation/swiftui/navigationlink)

**Initializer**

# init(_:tag:selection:destination:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a navigation link that presents a destination view when a bound selection variable matches a value you provide, using a text label that the link generates from a title string.

```swift
nonisolated init<S, V>(_ title: S, tag: V, selection: Binding<V?>, @ViewBuilder destination: () -> Destination) where S : StringProtocol, V : Hashable
```

## Parameters

**title**

A string for creating a text label.



**tag**

The value of `selection` that causes the link to present `destination`.



**selection**

A bound variable that causes the link to present `destination` when `selection` becomes equal to `tag`.



**destination**

A view for the navigation link to present.



## Creating links with view builders

- [init(_:isActive:destination:)](/documentation/swiftui/navigationlink/init(_:isactive:destination:))
- [init(isActive:destination:label:)](/documentation/swiftui/navigationlink/init(isactive:destination:label:))
- [init(tag:selection:destination:label:)](/documentation/swiftui/navigationlink/init(tag:selection:destination:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
