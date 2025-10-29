---
title: init(_:)
description: Creates a binding by projecting the base value to a hashable value.
source: https://developer.apple.com/documentation/swiftui/binding/init(_:)
timestamp: 2025-10-29T00:13:30.459Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [binding](/documentation/swiftui/binding)

**Initializer**

# init(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a binding by projecting the base value to a hashable value.

```swift
init<V>(_ base: Binding<V>) where Value == AnyHashable, V : Hashable
```

## Parameters

**base**

A `Hashable` value to project to an `AnyHashable` value.



## Creating a binding

- [init(projectedValue:)](/documentation/swiftui/binding/init(projectedvalue:))
- [init(get:set:)](/documentation/swiftui/binding/init(get:set:))
- [constant(_:)](/documentation/swiftui/binding/constant(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
