---
title: callAsFunction(id:)
description: Presents an immersive space for the scene with the specified identifier.
source: https://developer.apple.com/documentation/swiftui/openimmersivespaceaction/callasfunction(id:)
timestamp: 2025-10-29T00:11:42.369Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [openimmersivespaceaction](/documentation/swiftui/openimmersivespaceaction)

**Instance Method**

# callAsFunction(id:)

**Available on:** macOS 26.0+, visionOS 1.0+

> Presents an immersive space for the scene with the specified identifier.

```swift
@discardableResult @MainActor func callAsFunction(id: String) async -> OpenImmersiveSpaceAction.Result
```

## Parameters

**id**

The identifier of the immersive space to present.



## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [open Immersive Space](/documentation/swiftui/environmentvalues/openimmersivespace) action with a string identifier:

```swift
await openImmersiveSpace(id: "planet")
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [#Methods-with-Special](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/declarations/#Methods-with-Special-Names) in *The Swift Programming Language*.

## Calling the action

- [callAsFunction(id:value:)](/documentation/swiftui/openimmersivespaceaction/callasfunction(id:value:))
- [callAsFunction(value:)](/documentation/swiftui/openimmersivespaceaction/callasfunction(value:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
