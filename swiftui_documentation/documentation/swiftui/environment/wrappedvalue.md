---
title: wrappedValue
description: The current value of the environment property.
source: https://developer.apple.com/documentation/swiftui/environment/wrappedvalue
timestamp: 2025-10-29T00:15:01.099Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environment](/documentation/swiftui/environment)

**Instance Property**

# wrappedValue

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The current value of the environment property.

```swift
var wrappedValue: Value { get }
```

## Discussion

The wrapped value property provides primary access to the value’s data. However, you don’t access `wrappedValue` directly. Instead, you read the property variable created with the [Environment](/documentation/swiftui/environment) property wrapper:

```swift
@Environment(\.colorScheme) var colorScheme: ColorScheme

var body: some View {
    if colorScheme == .dark {
        DarkContent()
    } else {
        LightContent()
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
