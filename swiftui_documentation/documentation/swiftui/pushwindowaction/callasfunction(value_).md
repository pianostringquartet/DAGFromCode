---
title: callAsFunction(value:)
description: Pushes a window defined by a window group that presents the type of the specified value.
source: https://developer.apple.com/documentation/swiftui/pushwindowaction/callasfunction(value:)
timestamp: 2025-10-29T00:13:34.138Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pushwindowaction](/documentation/swiftui/pushwindowaction)

**Instance Method**

# callAsFunction(value:)

**Available on:** visionOS 2.0+

> Pushes a window defined by a window group that presents the type of the specified value.

```swift
@MainActor func callAsFunction<D>(value: D) where D : Decodable, D : Encodable, D : Hashable
```

## Parameters

**value**

The value to present.



## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [push Window](/documentation/swiftui/environmentvalues/pushwindow) action with a value:

```swift
pushWindow(value: video.id)
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
