---
title: projectedValue
description: A projection of the focused object that creates bindings to its properties using dynamic member lookup.
source: https://developer.apple.com/documentation/swiftui/focusedobject/projectedvalue
timestamp: 2025-10-29T00:09:54.919Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [focusedobject](/documentation/swiftui/focusedobject)

**Instance Property**

# projectedValue

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A projection of the focused object that creates bindings to its properties using dynamic member lookup.

```swift
@MainActor @preconcurrency var projectedValue: FocusedObject<ObjectType>.Wrapper? { get }
```

## Discussion

Use the projected value to pass a focused object down a view hierarchy.

## Getting the value

- [wrappedValue](/documentation/swiftui/focusedobject/wrappedvalue)
- [FocusedObject.Wrapper](/documentation/swiftui/focusedobject/wrapper)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
