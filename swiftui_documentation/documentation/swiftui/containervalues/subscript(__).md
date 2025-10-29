---
title: subscript(_:)
description: Accesses the particular container value associated with a custom key.
source: https://developer.apple.com/documentation/swiftui/containervalues/subscript(_:)
timestamp: 2025-10-29T00:13:24.232Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [containervalues](/documentation/swiftui/containervalues)

**Instance Subscript**

# subscript(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Accesses the particular container value associated with a custom key.

```swift
subscript<Key>(key: Key.Type) -> Key.Value where Key : ContainerValueKey { get set }
```

## Overview

Create a custom container value by declaring a new property in an extension to the container values structure and applying the [Entry()](/documentation/swiftui/entry()) macro to the variable declaration:

```swift
extension ContainerValues {
    @Entry var myCustomValue: String = "Default value"
}
```

You use custom container values the same way you use system-provided values, setting a value with the [containerValue(_:_:)](/documentation/swiftui/view/containervalue(_:_:)) view modifier, and reading values from a [Subview](/documentation/swiftui/subview) provided by the `subviews` modifier. You can also provide a dedicated view modifier as a convenience for setting the value:

```swift
extension View {
    func myCustomValue(_ myCustomValue: String) -> some View {
        containerValue(\.myCustomValue, myCustomValue)
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
