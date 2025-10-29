---
title: wrappedValue
description: The underlying value that the observed object references.
source: https://developer.apple.com/documentation/swiftui/observedobject/wrappedvalue
timestamp: 2025-10-29T00:13:47.146Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [observedobject](/documentation/swiftui/observedobject)

**Instance Property**

# wrappedValue

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The underlying value that the observed object references.

```swift
@MainActor @preconcurrency var wrappedValue: ObjectType
```

## Discussion

The wrapped value property provides primary access to the observed object’s data. However, you don’t typically access it by name. Instead, SwiftUI accesses this property for you when you refer to the variable that you create with the `@ObservedObject` attribute.

```swift
struct MySubView: View {
    @ObservedObject var model: DataModel

    var body: some View {
        Text(model.name) // Reads name from model's wrapped value.
    }
}
```

When you change a wrapped value, you can access the new value immediately. However, SwiftUI updates views that display the value asynchronously, so the interface might not update immediately.

## Getting the value

- [projectedValue](/documentation/swiftui/observedobject/projectedvalue)
- [ObservedObject.Wrapper](/documentation/swiftui/observedobject/wrapper)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
