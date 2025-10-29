---
title: constant(_:)
description: Creates a binding with an immutable value.
source: https://developer.apple.com/documentation/swiftui/binding/constant(_:)
timestamp: 2025-10-29T00:15:14.243Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [binding](/documentation/swiftui/binding)

**Type Method**

# constant(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a binding with an immutable value.

```swift
static func constant(_ value: Value) -> Binding<Value>
```

## Parameters

**value**

An immutable value.



## Discussion

Use this method to create a binding to a value that cannot change. This can be useful when using a [Preview Provider](/documentation/swiftui/previewprovider) to see how a view represents different values.

```swift
// Example of binding to an immutable value.
PlayButton(isPlaying: Binding.constant(true))
```

## Creating a binding

- [init(_:)](/documentation/swiftui/binding/init(_:))
- [init(projectedValue:)](/documentation/swiftui/binding/init(projectedvalue:))
- [init(get:set:)](/documentation/swiftui/binding/init(get:set:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
