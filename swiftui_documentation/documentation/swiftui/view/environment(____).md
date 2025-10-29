---
title: environment(_:_:)
description: Sets the environment value of the specified key path to the given value.
source: https://developer.apple.com/documentation/swiftui/view/environment(_:_:)
timestamp: 2025-10-29T00:15:11.410Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# environment(_:_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the environment value of the specified key path to the given value.

```swift
nonisolated func environment<V>(_ keyPath: WritableKeyPath<EnvironmentValues, V>, _ value: V) -> some View
```

## Parameters

**keyPath**

A key path that indicates the property of the [Environment Values](/documentation/swiftui/environmentvalues) structure to update.



**value**

The new value to set for the item specified by `keyPath`.



## Return Value

A view that has the given value set in its environment.

## Discussion

Use this modifier to set one of the writable properties of the [Environment Values](/documentation/swiftui/environmentvalues) structure, including custom values that you create. For example, you can set the value associated with the [truncation Mode](/documentation/swiftui/environmentvalues/truncationmode) key:

```swift
MyView()
    .environment(\.truncationMode, .head)
```

You then read the value inside `MyView` or one of its descendants using the [Environment](/documentation/swiftui/environment) property wrapper:

```swift
struct MyView: View {
    @Environment(\.truncationMode) var truncationMode: Text.TruncationMode

    var body: some View { ... }
}
```

SwiftUI provides dedicated view modifiers for setting most environment values, like the [truncationMode(_:)](/documentation/swiftui/view/truncationmode(_:)) modifier which sets the [truncation Mode](/documentation/swiftui/environmentvalues/truncationmode) value:

```swift
MyView()
    .truncationMode(.head)
```

Prefer the dedicated modifier when available, and offer your own when defining custom environment values, as described in [Entry()](/documentation/swiftui/entry()).

This modifier affects the given view, as well as that view’s descendant views. It has no effect outside the view hierarchy on which you call it.

## Modifying the environment of a view

- [environment(_:)](/documentation/swiftui/view/environment(_:))
- [transformEnvironment(_:transform:)](/documentation/swiftui/view/transformenvironment(_:transform:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
