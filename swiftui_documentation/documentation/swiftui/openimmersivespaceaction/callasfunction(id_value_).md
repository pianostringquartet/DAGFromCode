---
title: callAsFunction(id:value:)
description: Presents the immersive space that your app defines for the specified identifier and that handles the type of the presented value.
source: https://developer.apple.com/documentation/swiftui/openimmersivespaceaction/callasfunction(id:value:)
timestamp: 2025-10-29T00:11:43.808Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [openimmersivespaceaction](/documentation/swiftui/openimmersivespaceaction)

**Instance Method**

# callAsFunction(id:value:)

**Available on:** macOS 26.0+, visionOS 1.0+

> Presents the immersive space that your app defines for the specified identifier and that handles the type of the presented value.

```swift
@discardableResult @MainActor func callAsFunction<D>(id: String, value: D) async -> OpenImmersiveSpaceAction.Result where D : Decodable, D : Encodable, D : Hashable
```

## Parameters

**id**

The identifier of the immersive space to present.



**value**

The value to present.



## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [open Immersive Space](/documentation/swiftui/environmentvalues/openimmersivespace) action with a string identifier and a value:

```swift
await openImmersiveSpace(id: "planet", value: planet.ID)
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [#Methods-with-Special](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/declarations/#Methods-with-Special-Names) in *The Swift Programming Language*.

## Calling the action

- [callAsFunction(id:)](/documentation/swiftui/openimmersivespaceaction/callasfunction(id:))
- [callAsFunction(value:)](/documentation/swiftui/openimmersivespaceaction/callasfunction(value:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
