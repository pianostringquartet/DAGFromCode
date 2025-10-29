---
title: wrappedValue
description: The underlying value referenced by the state object.
source: https://developer.apple.com/documentation/swiftui/stateobject/wrappedvalue
timestamp: 2025-10-29T00:14:08.505Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [stateobject](/documentation/swiftui/stateobject)

**Instance Property**

# wrappedValue

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The underlying value referenced by the state object.

```swift
@MainActor @preconcurrency var wrappedValue: ObjectType { get }
```

## Discussion

The wrapped value property provides primary access to the value’s data. However, you don’t typically access it directly. Instead, SwiftUI accesses this property for you when you refer to the variable that you create with the `@StateObject` attribute:

```swift
@StateObject private var contact = Contact()

var body: some View {
    Text(contact.name) // Reads name from contact's wrapped value.
}
```

When you change a wrapped value, you can access the new value immediately. However, SwiftUI updates views that display the value asynchronously, so the interface might not update immediately.

## Getting the value

- [projectedValue](/documentation/swiftui/stateobject/projectedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
