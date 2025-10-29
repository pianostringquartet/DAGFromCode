---
title: init(_:)
description: A new property wrapper for the given key path.
source: https://developer.apple.com/documentation/swiftui/focusedbinding/init(_:)
timestamp: 2025-10-29T00:12:35.360Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [focusedbinding](/documentation/swiftui/focusedbinding)

**Initializer**

# init(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A new property wrapper for the given key path.

```swift
init(_ keyPath: KeyPath<FocusedValues, Binding<Value>?>)
```

## Parameters

**keyPath**

The key path for the focus value to read.



## Discussion

The value of the property wrapper is updated dynamically as focus changes and different published bindings go in and out of scope.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
