---
title: init(wrappedValue:)
description: Creates a state property that stores an initial wrapped value.
source: https://developer.apple.com/documentation/swiftui/state/init(wrappedvalue:)
timestamp: 2025-10-29T00:11:31.921Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [state](/documentation/swiftui/state)

**Initializer**

# init(wrappedValue:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a state property that stores an initial wrapped value.

```swift
init(wrappedValue value: Value)
```

## Parameters

**value**

An initial value to store in the state property.



## Discussion

You don’t call this initializer directly. Instead, SwiftUI calls it for you when you declare a property with the `@State` attribute and provide an initial value:

```swift
struct MyView: View {
    @State private var isPlaying: Bool = false

    // ...
}
```

SwiftUI initializes the state’s storage only once for each container instance that you declare. In the above code, SwiftUI creates `isPlaying` only the first time it initializes a particular instance of `MyView`. On the other hand, each instance of `MyView` creates a distinct instance of the state. For example, each of the views in the following [VStack](/documentation/swiftui/vstack) has its own `isPlaying` value:

```swift
var body: some View {
    VStack {
        MyView()
        MyView()
    }
}
```

## Creating a state

- [init(initialValue:)](/documentation/swiftui/state/init(initialvalue:))
- [init()](/documentation/swiftui/state/init())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
