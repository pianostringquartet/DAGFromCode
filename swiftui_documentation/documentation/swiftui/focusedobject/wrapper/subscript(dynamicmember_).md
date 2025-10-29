---
title: subscript(dynamicMember:)
description: Returns a binding to the value of a given key path.
source: https://developer.apple.com/documentation/swiftui/focusedobject/wrapper/subscript(dynamicmember:)
timestamp: 2025-10-29T00:12:07.162Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [focusedobject](/documentation/swiftui/focusedobject) › [wrapper](/documentation/swiftui/focusedobject/wrapper)

**Instance Subscript**

# subscript(dynamicMember:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Returns a binding to the value of a given key path.

```swift
@MainActor @preconcurrency subscript<T>(dynamicMember keyPath: ReferenceWritableKeyPath<ObjectType, T>) -> Binding<T> { get }
```

## Parameters

**keyPath**

A key path to a specific value on the wrapped object.



## Return Value

A new binding.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
