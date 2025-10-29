---
title: subscript(dynamicMember:)
description: Returns a binding to the resulting value of a given key path.
source: https://developer.apple.com/documentation/swiftui/environmentobject/wrapper/subscript(dynamicmember:)
timestamp: 2025-10-29T00:12:17.823Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentobject](/documentation/swiftui/environmentobject) › [wrapper](/documentation/swiftui/environmentobject/wrapper)

**Instance Subscript**

# subscript(dynamicMember:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Returns a binding to the resulting value of a given key path.

```swift
@MainActor @preconcurrency subscript<Subject>(dynamicMember keyPath: ReferenceWritableKeyPath<ObjectType, Subject>) -> Binding<Subject> { get }
```

## Parameters

**keyPath**

A key path to a specific resulting value.



## Return Value

A new binding.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
