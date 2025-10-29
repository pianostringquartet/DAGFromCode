---
title: subscript(dynamicMember:)
description: Gets a binding to the value of a specified key path.
source: https://developer.apple.com/documentation/swiftui/observedobject/wrapper/subscript(dynamicmember:)
timestamp: 2025-10-29T00:10:35.905Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [observedobject](/documentation/swiftui/observedobject) › [wrapper](/documentation/swiftui/observedobject/wrapper)

**Instance Subscript**

# subscript(dynamicMember:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Gets a binding to the value of a specified key path.

```swift
@MainActor @preconcurrency subscript<Subject>(dynamicMember keyPath: ReferenceWritableKeyPath<ObjectType, Subject>) -> Binding<Subject> { get }
```

## Parameters

**keyPath**

A key path to a specific  value.



## Return Value

A new binding.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
