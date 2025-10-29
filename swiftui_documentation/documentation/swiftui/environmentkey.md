---
title: EnvironmentKey
description: A key for accessing values in the environment.
source: https://developer.apple.com/documentation/swiftui/environmentkey
timestamp: 2025-10-29T00:11:59.313Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# EnvironmentKey

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A key for accessing values in the environment.

```swift
protocol EnvironmentKey
```

## Overview

You can create custom environment values by extending the [Environment Values](/documentation/swiftui/environmentvalues) structure with new properties. First declare a new environment key type and specify a value for the required [default Value](/documentation/swiftui/environmentkey/defaultvalue) property:

```swift
private struct MyEnvironmentKey: EnvironmentKey {
    static let defaultValue: String = "Default value"
}
```

The Swift compiler automatically infers the associated [Value](/documentation/swiftui/environmentkey/value) type as the type you specify for the default value. Then use the key to define a new environment value property:

```swift
extension EnvironmentValues {
    var myCustomValue: String {
        get { self[MyEnvironmentKey.self] }
        set { self[MyEnvironmentKey.self] = newValue }
    }
}
```

Clients of your environment value never use the key directly. Instead, they use the key path of your custom environment value property. To set the environment value for a view and all its subviews, add the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) view modifier to that view:

```swift
MyView()
    .environment(\.myCustomValue, "Another string")
```

As a convenience, you can also define a dedicated view modifier to apply this environment value:

```swift
extension View {
    func myCustomValue(_ myCustomValue: String) -> some View {
        environment(\.myCustomValue, myCustomValue)
    }
}
```

This improves clarity at the call site:

```swift
MyView()
    .myCustomValue("Another string")
```

To read the value from inside `MyView` or one of its descendants, use the [Environment](/documentation/swiftui/environment) property wrapper:

```swift
struct MyView: View {
    @Environment(\.myCustomValue) var customValue: String

    var body: some View {
        Text(customValue) // Displays "Another string".
    }
}
```

## Getting the default value

- [defaultValue](/documentation/swiftui/environmentkey/defaultvalue) The default value for the environment key.
- [Value](/documentation/swiftui/environmentkey/value) The associated type representing the type of the environment key’s value.

## Creating custom environment values

- [Entry()](/documentation/swiftui/entry())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
