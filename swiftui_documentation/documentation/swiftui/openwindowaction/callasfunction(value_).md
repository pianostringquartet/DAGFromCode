---
title: callAsFunction(value:)
description: Opens a window defined by a window group that presents the type of the specified value.
source: https://developer.apple.com/documentation/swiftui/openwindowaction/callasfunction(value:)
timestamp: 2025-10-29T00:12:53.694Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [openwindowaction](/documentation/swiftui/openwindowaction)

**Instance Method**

# callAsFunction(value:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Opens a window defined by a window group that presents the type of the specified value.

```swift
@MainActor @preconcurrency func callAsFunction<D>(value: D) where D : Decodable, D : Encodable, D : Hashable
```

## Parameters

**value**

The value to present.



## Discussion

Don’t call this method directly. SwiftUI calls it when you call the [open Window](/documentation/swiftui/environmentvalues/openwindow) action with a value:

```swift
openWindow(value: message.id)
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*.

## Calling the action

- [callAsFunction(id:)](/documentation/swiftui/openwindowaction/callasfunction(id:))
- [callAsFunction(id:value:)](/documentation/swiftui/openwindowaction/callasfunction(id:value:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
