---
title: map(_:)
description: Returns a gesture that uses the given closure to map over this gesture’s value.
source: https://developer.apple.com/documentation/swiftui/gesture/map(_:)
timestamp: 2025-10-29T00:12:41.806Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gesture](/documentation/swiftui/gesture)

**Instance Method**

# map(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Returns a gesture that uses the given closure to map over this gesture’s value.

```swift
nonisolated func map<T>(_ body: @escaping (Self.Value) -> T) -> _MapGesture<Self, T>
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
