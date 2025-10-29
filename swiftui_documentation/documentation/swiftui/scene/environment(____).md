---
title: environment(_:_:)
description: Sets the environment value of the specified key path to the given value.
source: https://developer.apple.com/documentation/swiftui/scene/environment(_:_:)
timestamp: 2025-10-29T00:10:52.276Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# environment(_:_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Sets the environment value of the specified key path to the given value.

```swift
nonisolated func environment<V>(_ keyPath: WritableKeyPath<EnvironmentValues, V>, _ value: V) -> some Scene
```

## Parameters

**keyPath**

A key path that indicates the property of the [Environment Values](/documentation/swiftui/environmentvalues) structure to update.



**value**

The new value to set for the item specified by `keyPath`.



## Return Value

A view that has the given value set in its environment.

## Discussion

Use this modifier to set one of the writable properties of the [Environment Values](/documentation/swiftui/environmentvalues) structure, including custom values that you create. For example, you can create a custom environment key `styleOverrides` to set a value that represents style settings that for the entire app:

```swift
WindowGroup {
    ContentView()
}
.environment(\.styleOverrides, StyleOverrides())
```

You then read the value inside `ContentView` or one of its descendants using the [Environment](/documentation/swiftui/environment) property wrapper:

```swift
struct MyView: View {
    @Environment(\.styleOverrides) var styleOverrides: StyleOverrides

    var body: some View { ... }
}
```

This modifier affects the given scene, as well as that scene’s descendant views. It has no effect outside the view hierarchy on which you call it.

## Modifying the environment of a scene

- [environment(_:)](/documentation/swiftui/scene/environment(_:))
- [transformEnvironment(_:transform:)](/documentation/swiftui/scene/transformenvironment(_:transform:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
