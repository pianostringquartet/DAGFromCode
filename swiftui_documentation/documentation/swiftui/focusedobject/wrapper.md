---
title: FocusedObject.Wrapper
description: A wrapper around the underlying focused object that can create bindings to its properties using dynamic member lookup.
source: https://developer.apple.com/documentation/swiftui/focusedobject/wrapper
timestamp: 2025-10-29T00:10:53.645Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [focusedobject](/documentation/swiftui/focusedobject)

**Structure**

# FocusedObject.Wrapper

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A wrapper around the underlying focused object that can create bindings to its properties using dynamic member lookup.

```swift
@MainActor @preconcurrency @dynamicMemberLookup @frozen struct Wrapper
```

## Accessing members

- [subscript(dynamicMember:)](/documentation/swiftui/focusedobject/wrapper/subscript(dynamicmember:)) Returns a binding to the value of a given key path.

## Getting the value

- [projectedValue](/documentation/swiftui/focusedobject/projectedvalue)
- [wrappedValue](/documentation/swiftui/focusedobject/wrappedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
