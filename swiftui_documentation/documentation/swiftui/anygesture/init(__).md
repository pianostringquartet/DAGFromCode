---
title: init(_:)
description: Creates an instance from another gesture.
source: https://developer.apple.com/documentation/swiftui/anygesture/init(_:)
timestamp: 2025-10-29T00:10:06.850Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [anygesture](/documentation/swiftui/anygesture)

**Initializer**

# init(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates an instance from another gesture.

```swift
init<T>(_ gesture: T) where Value == T.Value, T : Gesture
```

## Parameters

**gesture**

A gesture that you use to create a new gesture.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
