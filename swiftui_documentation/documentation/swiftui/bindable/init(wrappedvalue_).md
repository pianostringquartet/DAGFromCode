---
title: init(wrappedValue:)
description: Creates a bindable object from an observable object.
source: https://developer.apple.com/documentation/swiftui/bindable/init(wrappedvalue:)
timestamp: 2025-10-29T00:10:49.448Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [bindable](/documentation/swiftui/bindable)

**Initializer**

# init(wrappedValue:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a bindable object from an observable object.

```swift
init(wrappedValue: Value)
```

## Discussion

You should not call this initializer directly. Instead, declare a property with the `@Bindable` attribute, and provide an initial value.

## Creating a bindable value

- [init(_:)](/documentation/swiftui/bindable/init(_:))
- [init(projectedValue:)](/documentation/swiftui/bindable/init(projectedvalue:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
