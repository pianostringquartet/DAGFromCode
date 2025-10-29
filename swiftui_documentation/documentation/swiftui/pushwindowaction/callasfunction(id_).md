---
title: callAsFunction(id:)
description: Pushes a window that is associated with the specified identifier.
source: https://developer.apple.com/documentation/swiftui/pushwindowaction/callasfunction(id:)
timestamp: 2025-10-29T00:13:18.193Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pushwindowaction](/documentation/swiftui/pushwindowaction)

**Instance Method**

# callAsFunction(id:)

**Available on:** visionOS 2.0+

> Pushes a window that is associated with the specified identifier.

```swift
@MainActor func callAsFunction(id: String)
```

## Parameters

**id**

The identifier of the scene to present.



## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [push Window](/documentation/swiftui/environmentvalues/pushwindow) action with an identifier:

```swift
pushWindow(id: "viewer")
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
