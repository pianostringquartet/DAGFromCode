---
title: callAsFunction()
description: Dismisses the current window.
source: https://developer.apple.com/documentation/swiftui/dismisswindowaction/callasfunction()
timestamp: 2025-10-29T00:11:10.081Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dismisswindowaction](/documentation/swiftui/dismisswindowaction)

**Instance Method**

# callAsFunction()

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Dismisses the current window.

```swift
@MainActor @preconcurrency func callAsFunction()
```

## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [dismiss Window](/documentation/swiftui/environmentvalues/dismisswindow) action:

```swift
dismissWindow()
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [declarations#Methods-with-Special](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/declarations#Methods-with-Special-Names) in *The Swift Programming Language*.

## Calling the action

- [callAsFunction(id:)](/documentation/swiftui/dismisswindowaction/callasfunction(id:))
- [callAsFunction(id:value:)](/documentation/swiftui/dismisswindowaction/callasfunction(id:value:))
- [callAsFunction(value:)](/documentation/swiftui/dismisswindowaction/callasfunction(value:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
