---
title: callAsFunction(id:value:)
description: Pushes a window defined by the window group that presents the specified value type and that is associated with the specified identifier.
source: https://developer.apple.com/documentation/swiftui/pushwindowaction/callasfunction(id:value:)
timestamp: 2025-10-29T00:12:28.277Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pushwindowaction](/documentation/swiftui/pushwindowaction)

**Instance Method**

# callAsFunction(id:value:)

**Available on:** visionOS 2.0+

> Pushes a window defined by the window group that presents the specified value type and that is associated with the specified identifier.

```swift
@MainActor func callAsFunction<D>(id: String, value: D) where D : Decodable, D : Encodable, D : Hashable
```

## Parameters

**id**

The identifier of the scene to present.



**value**

The value to present.



## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [push Window](/documentation/swiftui/environmentvalues/pushwindow) action with an identifier and a value:

```swift
pushWindow(id: "viewer", value: video.id)
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
