---
title: callAsFunction(id:value:)
description: Dismisses the window defined by the window group that is presenting the specified value type and that’s associated with the specified identifier.
source: https://developer.apple.com/documentation/swiftui/dismisswindowaction/callasfunction(id:value:)
timestamp: 2025-10-29T00:10:37.693Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dismisswindowaction](/documentation/swiftui/dismisswindowaction)

**Instance Method**

# callAsFunction(id:value:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Dismisses the window defined by the window group that is presenting the specified value type and that’s associated with the specified identifier.

```swift
@MainActor @preconcurrency func callAsFunction<D>(id: String, value: D) where D : Decodable, D : Encodable, D : Hashable
```

## Parameters

**id**

The identifier of the scene to dismiss.



**value**

The value which is currently presented.



## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [dismiss Window](/documentation/swiftui/environmentvalues/dismisswindow) action with an identifier and a value:

```swift
dismissWindow(id: "message", value: message.id)
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [declarations#Methods-with-Special](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/declarations#Methods-with-Special-Names) in *The Swift Programming Language*.

## Calling the action

- [callAsFunction()](/documentation/swiftui/dismisswindowaction/callasfunction())
- [callAsFunction(id:)](/documentation/swiftui/dismisswindowaction/callasfunction(id:))
- [callAsFunction(value:)](/documentation/swiftui/dismisswindowaction/callasfunction(value:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
