---
title: init(_:destination:tag:selection:)
description: Creates a navigation link that presents a destination view when a bound selection variable matches a value you provide, using a text label that the link generates from a title string.
source: https://developer.apple.com/documentation/swiftui/navigationlink/init(_:destination:tag:selection:)
timestamp: 2025-10-29T00:14:48.343Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationlink](/documentation/swiftui/navigationlink)

**Initializer**

# init(_:destination:tag:selection:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a navigation link that presents a destination view when a bound selection variable matches a value you provide, using a text label that the link generates from a title string.

```swift
nonisolated init<S, V>(_ title: S, destination: Destination, tag: V, selection: Binding<V?>) where S : StringProtocol, V : Hashable
```

## Parameters

**title**

A string for creating a text label.



**destination**

A view for the navigation link to present.



**tag**

The value of `selection` that causes the link to present `destination`.



**selection**

A bound variable that causes the link to present `destination` when `selection` becomes equal to `tag`.



## Creating links with view arguments

- [init(_:destination:isActive:)](/documentation/swiftui/navigationlink/init(_:destination:isactive:))
- [init(destination:isActive:label:)](/documentation/swiftui/navigationlink/init(destination:isactive:label:))
- [init(destination:tag:selection:label:)](/documentation/swiftui/navigationlink/init(destination:tag:selection:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
