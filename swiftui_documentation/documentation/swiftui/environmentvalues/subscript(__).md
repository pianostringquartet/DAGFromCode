---
title: subscript(_:)
description: Accesses the environment value associated with a custom key.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/subscript(_:)
timestamp: 2025-10-29T00:12:10.081Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Subscript**

# subscript(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Accesses the environment value associated with a custom key.

```swift
subscript<K>(key: K.Type) -> K.Value where K : EnvironmentKey { get set }
```

## Overview

Create a custom environment value by declaring a new property in an extension to the environment values structure and applying the [Entry()](/documentation/swiftui/entry()) macro to the variable declaration:

```swift
extension EnvironmentValues {
    @Entry var myCustomValue: String = "Default value"
}
```

You use custom environment values the same way you use system-provided values, setting a value with the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) view modifier, and reading values with the [Environment](/documentation/swiftui/environment) property wrapper. You can also provide a dedicated view modifier as a convenience for setting the value:

```swift
extension View {
    func myCustomValue(_ myCustomValue: String) -> some View {
        environment(\.myCustomValue, myCustomValue)
    }
}
```

## Creating and accessing values

- [init()](/documentation/swiftui/environmentvalues/init())
- [description](/documentation/swiftui/environmentvalues/description)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
