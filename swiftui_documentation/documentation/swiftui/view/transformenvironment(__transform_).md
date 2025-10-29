---
title: transformEnvironment(_:transform:)
description: Transforms the environment value of the specified key path with the given function.
source: https://developer.apple.com/documentation/swiftui/view/transformenvironment(_:transform:)
timestamp: 2025-10-29T00:09:38.736Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# transformEnvironment(_:transform:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Transforms the environment value of the specified key path with the given function.

```swift
nonisolated func transformEnvironment<V>(_ keyPath: WritableKeyPath<EnvironmentValues, V>, transform: @escaping (inout V) -> Void) -> some View
```

## Modifying the environment of a view

- [environment(_:)](/documentation/swiftui/view/environment(_:))
- [environment(_:_:)](/documentation/swiftui/view/environment(_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
