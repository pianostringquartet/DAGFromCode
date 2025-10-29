---
title: projectedValue
description: A projection of the observed object that creates bindings to its properties.
source: https://developer.apple.com/documentation/swiftui/observedobject/projectedvalue
timestamp: 2025-10-29T00:10:01.708Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [observedobject](/documentation/swiftui/observedobject)

**Instance Property**

# projectedValue

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A projection of the observed object that creates bindings to its properties.

```swift
@MainActor @preconcurrency var projectedValue: ObservedObject<ObjectType>.Wrapper { get }
```

## Discussion

Use the projected value to get a [Binding](/documentation/swiftui/binding) to a property of an observed object. To access the projected value, prefix the property variable with a dollar sign (`$`). For example, you can get a binding to a model’s `isEnabled` Boolean so that a [Toggle](/documentation/swiftui/toggle) can control its value:

```swift
struct MySubView: View {
    @ObservedObject var model: DataModel

    var body: some View {
        Toggle("Enabled", isOn: $model.isEnabled)
    }
}
```

> [!IMPORTANT]
> A `Binding` created by the projected value must only be read from, or written to by the main actor. Failing to do so may result in undefined behavior, or data loss. When this occurs, SwiftUI will issue a runtime warning. In a future release, a crash will occur instead.

## Getting the value

- [wrappedValue](/documentation/swiftui/observedobject/wrappedvalue)
- [ObservedObject.Wrapper](/documentation/swiftui/observedobject/wrapper)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
