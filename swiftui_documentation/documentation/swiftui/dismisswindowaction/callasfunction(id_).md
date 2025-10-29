---
title: callAsFunction(id:)
description: Dismisses the window that’s associated with the specified identifier.
source: https://developer.apple.com/documentation/swiftui/dismisswindowaction/callasfunction(id:)
timestamp: 2025-10-29T00:13:44.221Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dismisswindowaction](/documentation/swiftui/dismisswindowaction)

**Instance Method**

# callAsFunction(id:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Dismisses the window that’s associated with the specified identifier.

```swift
@MainActor @preconcurrency func callAsFunction(id: String)
```

## Parameters

**id**

The identifier of the scene to dismiss.



## Discussion

When the specified identifier represents a [Window Group](/documentation/swiftui/windowgroup), all of the open windows in that group will be dismissed. For dismissing a single window associated to a `WindowGroup` scene, use `dismissWindow(value:)` or `dismissWindow(id:value:)`.

Don’t call this method directly. SwiftUI calls it when you call the [dismiss Window](/documentation/swiftui/environmentvalues/dismisswindow) action with an identifier:

```swift
dismissWindow(id: "message")
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [declarations#Methods-with-Special](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/declarations#Methods-with-Special-Names) in *The Swift Programming Language*.

## Calling the action

- [callAsFunction()](/documentation/swiftui/dismisswindowaction/callasfunction())
- [callAsFunction(id:value:)](/documentation/swiftui/dismisswindowaction/callasfunction(id:value:))
- [callAsFunction(value:)](/documentation/swiftui/dismisswindowaction/callasfunction(value:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
