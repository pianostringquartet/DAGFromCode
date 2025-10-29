---
title: ObservedObject.Wrapper
description: A wrapper of the underlying observable object that can create bindings to its properties.
source: https://developer.apple.com/documentation/swiftui/observedobject/wrapper
timestamp: 2025-10-29T00:13:56.547Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [observedobject](/documentation/swiftui/observedobject)

**Structure**

# ObservedObject.Wrapper

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A wrapper of the underlying observable object that can create bindings to its properties.

```swift
@MainActor @dynamicMemberLookup @preconcurrency @frozen struct Wrapper
```

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Subscripts

- [subscript(dynamicMember:)](/documentation/swiftui/observedobject/wrapper/subscript(dynamicmember:)) Gets a binding to the value of a specified key path.

## Getting the value

- [wrappedValue](/documentation/swiftui/observedobject/wrappedvalue)
- [projectedValue](/documentation/swiftui/observedobject/projectedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
