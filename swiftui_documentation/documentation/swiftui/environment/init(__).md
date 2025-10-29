---
title: init(_:)
description: Creates an environment property to read the specified key path.
source: https://developer.apple.com/documentation/swiftui/environment/init(_:)
timestamp: 2025-10-29T00:13:52.182Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environment](/documentation/swiftui/environment)

**Initializer**

# init(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates an environment property to read the specified key path.

```swift
init(_ keyPath: KeyPath<EnvironmentValues, Value>)
```

## Parameters

**keyPath**

A key path to a specific resulting value.



## Discussion

Don’t call this initializer directly. Instead, declare a property with the [Environment](/documentation/swiftui/environment) property wrapper, and provide the key path of the environment value that the property should reflect:

```swift
struct MyView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme

    // ...
}
```

SwiftUI automatically updates any parts of `MyView` that depend on the property when the associated environment value changes. You can’t modify the environment value using a property like this. Instead, use the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) view modifier on a view to set a value for a view hierarchy.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
