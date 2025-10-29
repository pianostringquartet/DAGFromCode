---
title: EnvironmentObject.Wrapper
description: A wrapper of the underlying environment object that can create bindings to its properties using dynamic member lookup.
source: https://developer.apple.com/documentation/swiftui/environmentobject/wrapper
timestamp: 2025-10-29T00:13:19.978Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentobject](/documentation/swiftui/environmentobject)

**Structure**

# EnvironmentObject.Wrapper

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A wrapper of the underlying environment object that can create bindings to its properties using dynamic member lookup.

```swift
@MainActor @dynamicMemberLookup @frozen @preconcurrency struct Wrapper
```

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting a binding value

- [subscript(dynamicMember:)](/documentation/swiftui/environmentobject/wrapper/subscript(dynamicmember:)) Returns a binding to the resulting value of a given key path.

## Getting the value

- [wrappedValue](/documentation/swiftui/environmentobject/wrappedvalue)
- [projectedValue](/documentation/swiftui/environmentobject/projectedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
