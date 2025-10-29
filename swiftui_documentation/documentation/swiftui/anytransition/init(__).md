---
title: init(_:)
description: Create an instance that type-erases .
source: https://developer.apple.com/documentation/swiftui/anytransition/init(_:)
timestamp: 2025-10-29T00:13:10.042Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [anytransition](/documentation/swiftui/anytransition)

**Initializer**

# init(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Create an instance that type-erases .

```swift
init<T>(_ transition: T) where T : Transition
```

## Creating a custom transition

- [modifier(active:identity:)](/documentation/swiftui/anytransition/modifier(active:identity:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
