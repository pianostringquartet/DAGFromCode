---
title: projectedValue
description: A projection of the environment object that creates bindings to its properties using dynamic member lookup.
source: https://developer.apple.com/documentation/swiftui/environmentobject/projectedvalue
timestamp: 2025-10-29T00:10:41.431Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentobject](/documentation/swiftui/environmentobject)

**Instance Property**

# projectedValue

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A projection of the environment object that creates bindings to its properties using dynamic member lookup.

```swift
@MainActor @preconcurrency var projectedValue: EnvironmentObject<ObjectType>.Wrapper { get }
```

## Discussion

Use the projected value to pass an environment object down a view hierarchy.

## Getting the value

- [wrappedValue](/documentation/swiftui/environmentobject/wrappedvalue)
- [EnvironmentObject.Wrapper](/documentation/swiftui/environmentobject/wrapper)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
