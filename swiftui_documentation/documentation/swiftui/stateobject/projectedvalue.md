---
title: projectedValue
description: A projection of the state object that creates bindings to its properties.
source: https://developer.apple.com/documentation/swiftui/stateobject/projectedvalue
timestamp: 2025-10-29T00:12:15.259Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [stateobject](/documentation/swiftui/stateobject)

**Instance Property**

# projectedValue

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A projection of the state object that creates bindings to its properties.

```swift
@MainActor @preconcurrency var projectedValue: ObservedObject<ObjectType>.Wrapper { get }
```

## Discussion

Use the projected value to get a [Binding](/documentation/swiftui/binding) to a property of a state object. To access the projected value, prefix the property name with a dollar sign (`$`). For example, you can get a binding to a model’s `isEnabled` Boolean so that a [Toggle](/documentation/swiftui/toggle) can control the value:

```swift
struct MyView: View {
    @StateObject private var model = DataModel()

    var body: some View {
        Toggle("Enabled", isOn: $model.isEnabled)
    }
}
```

> [!IMPORTANT]
> A `Binding` created by the projected value must only be read from, or written to by the main actor. Failing to do so may result in undefined behavior, or data loss. When this occurs, SwiftUI will issue a runtime warning. In a future release, a crash will occur instead.

## Getting the value

- [wrappedValue](/documentation/swiftui/stateobject/wrappedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
