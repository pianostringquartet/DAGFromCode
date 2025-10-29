---
title: makeCoordinator(converter:)
description: Creates the custom object that you use to communicate state changes from your gesture recognizer to other parts of your SwiftUI interface.
source: https://developer.apple.com/documentation/swiftui/nsgesturerecognizerrepresentable/makecoordinator(converter:)
timestamp: 2025-10-29T00:14:28.161Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsgesturerecognizerrepresentable](/documentation/swiftui/nsgesturerecognizerrepresentable)

**Instance Method**

# makeCoordinator(converter:)

**Available on:** macOS 26.0+

> Creates the custom object that you use to communicate state changes from your gesture recognizer to other parts of your SwiftUI interface.

```swift
@MainActor @preconcurrency func makeCoordinator(converter: Self.CoordinateSpaceConverter) -> Self.Coordinator
```

## Parameters

**converter**

A structure used to convert locations  to/from coordinate spaces in the hierarchy of the associated SwiftUI view.



## Discussion

You access the resulting coordinator via the `Context` passed into other methods in this protocol.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
