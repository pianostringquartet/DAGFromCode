---
title: init(_:)
description: A new property wrapper for the given key path.
source: https://developer.apple.com/documentation/swiftui/focusedvalue/init(_:)
timestamp: 2025-10-29T00:13:24.740Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [focusedvalue](/documentation/swiftui/focusedvalue)

**Initializer**

# init(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A new property wrapper for the given key path.

```swift
init(_ keyPath: KeyPath<FocusedValues, Value?>)
```

## Parameters

**keyPath**

The key path for the focus value to read.



## Discussion

The value of the property wrapper is updated dynamically as focus changes and different published values go in and out of scope.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
