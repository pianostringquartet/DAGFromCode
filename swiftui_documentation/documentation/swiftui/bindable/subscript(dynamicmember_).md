---
title: subscript(dynamicMember:)
description: Returns a binding to the value of a given key path.
source: https://developer.apple.com/documentation/swiftui/bindable/subscript(dynamicmember:)
timestamp: 2025-10-29T00:11:41.235Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [bindable](/documentation/swiftui/bindable)

**Instance Subscript**

# subscript(dynamicMember:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns a binding to the value of a given key path.

```swift
subscript<Subject>(dynamicMember keyPath: ReferenceWritableKeyPath<Value, Subject>) -> Binding<Subject> { get }
```

## Getting the value

- [wrappedValue](/documentation/swiftui/bindable/wrappedvalue)
- [projectedValue](/documentation/swiftui/bindable/projectedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
