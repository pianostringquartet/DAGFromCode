---
title: transformEnvironment(_:transform:)
description: Transforms the environment value of the specified key path with the given function.
source: https://developer.apple.com/documentation/swiftui/scene/transformenvironment(_:transform:)
timestamp: 2025-10-29T00:09:27.568Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# transformEnvironment(_:transform:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Transforms the environment value of the specified key path with the given function.

```swift
nonisolated func transformEnvironment<V>(_ keyPath: WritableKeyPath<EnvironmentValues, V>, transform: @escaping (inout V) -> Void) -> some Scene
```

## Modifying the environment of a scene

- [environment(_:)](/documentation/swiftui/scene/environment(_:))
- [environment(_:_:)](/documentation/swiftui/scene/environment(_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
