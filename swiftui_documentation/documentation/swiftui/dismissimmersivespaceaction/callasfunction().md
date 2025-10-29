---
title: callAsFunction()
description: Dismisses the currently opened immersive space.
source: https://developer.apple.com/documentation/swiftui/dismissimmersivespaceaction/callasfunction()
timestamp: 2025-10-29T00:12:17.152Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dismissimmersivespaceaction](/documentation/swiftui/dismissimmersivespaceaction)

**Instance Method**

# callAsFunction()

**Available on:** macOS 26.0+, visionOS 1.0+

> Dismisses the currently opened immersive space.

```swift
@MainActor func callAsFunction() async
```

## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [dismiss Immersive Space](/documentation/swiftui/environmentvalues/dismissimmersivespace) action:

```swift
await dismissImmersiveSpace()
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [#Methods-with-Special](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/declarations/#Methods-with-Special-Names) in *The Swift Programming Language*.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
