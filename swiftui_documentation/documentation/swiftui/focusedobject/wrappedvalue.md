---
title: wrappedValue
description: The underlying value referenced by the focused object.
source: https://developer.apple.com/documentation/swiftui/focusedobject/wrappedvalue
timestamp: 2025-10-29T00:10:59.586Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [focusedobject](/documentation/swiftui/focusedobject)

**Instance Property**

# wrappedValue

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The underlying value referenced by the focused object.

```swift
@MainActor @preconcurrency var wrappedValue: ObjectType? { get }
```

## Discussion

This property provides primary access to the value’s data. However, you don’t access `wrappedValue` directly. Instead, you use the property variable created with the [Focused Object](/documentation/swiftui/focusedobject) attribute.

When a mutable value changes, the new value is immediately available. However, a view displaying the value is updated asynchronously and may not show the new value immediately.

## Getting the value

- [projectedValue](/documentation/swiftui/focusedobject/projectedvalue)
- [FocusedObject.Wrapper](/documentation/swiftui/focusedobject/wrapper)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
