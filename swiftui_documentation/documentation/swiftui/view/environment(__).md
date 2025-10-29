---
title: environment(_:)
description: Places an observable object in the view’s environment.
source: https://developer.apple.com/documentation/swiftui/view/environment(_:)
timestamp: 2025-10-29T00:14:32.976Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# environment(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Places an observable object in the view’s environment.

```swift
nonisolated func environment<T>(_ object: T?) -> some View where T : AnyObject, T : Observable
```

## Parameters

**object**

The object to set for this object’s type in the environment, or `nil` to clear an object of this type from the environment.



## Return Value

A view that has the specified object in its environment.

## Discussion

Use this modifier to place an object that you declare with the [Observable()](/documentation/Observation/Observable()) macro into a view’s environment. For example, you can add an instance of a custom observable `Profile` class to the environment of a `ContentView`:

```swift
@Observable class Profile { ... }

struct RootView: View {
    @State private var currentProfile: Profile?

    var body: some View {
        ContentView()
            .environment(currentProfile)
    }
}
```

You then read the object inside `ContentView` or one of its descendants using the [Environment](/documentation/swiftui/environment) property wrapper:

```swift
struct ContentView: View {
    @Environment(Profile.self) private var currentProfile: Profile

    var body: some View { ... }
}
```

This modifier affects the given view, as well as that view’s descendant views. It has no effect outside the view hierarchy on which you call it. The environment of a given view hierarchy holds only one observable object of a given type.

> [!NOTE]
> This modifier takes an object that conforms to the [Observable](/documentation/Observation/Observable) protocol. To add environment objects that conform to the [Observable Object](/documentation/Combine/ObservableObject) protocol, use [environmentObject(_:)](/documentation/swiftui/view/environmentobject(_:)) instead.

## Modifying the environment of a view

- [environment(_:_:)](/documentation/swiftui/view/environment(_:_:))
- [transformEnvironment(_:transform:)](/documentation/swiftui/view/transformenvironment(_:transform:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
