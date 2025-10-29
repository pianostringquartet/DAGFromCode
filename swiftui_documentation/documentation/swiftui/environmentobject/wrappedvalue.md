---
title: wrappedValue
description: The underlying value referenced by the environment object.
source: https://developer.apple.com/documentation/swiftui/environmentobject/wrappedvalue
timestamp: 2025-10-29T00:13:12.989Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentobject](/documentation/swiftui/environmentobject)

**Instance Property**

# wrappedValue

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The underlying value referenced by the environment object.

```swift
@MainActor @preconcurrency var wrappedValue: ObjectType { get }
```

## Discussion

This property provides primary access to the value’s data. However, you don’t access `wrappedValue` directly. Instead, you use the property variable created with the [Environment Object](/documentation/swiftui/environmentobject) attribute.

When a mutable value changes, the new value is immediately available. However, a view displaying the value is updated asynchronously and may not show the new value immediately.

## Getting the value

- [projectedValue](/documentation/swiftui/environmentobject/projectedvalue)
- [EnvironmentObject.Wrapper](/documentation/swiftui/environmentobject/wrapper)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
