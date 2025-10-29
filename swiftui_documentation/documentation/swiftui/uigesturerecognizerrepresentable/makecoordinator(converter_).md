---
title: makeCoordinator(converter:)
description: Creates the custom object that you use to communicate state changes from your gesture recognizer to other parts of your SwiftUI interface.
source: https://developer.apple.com/documentation/swiftui/uigesturerecognizerrepresentable/makecoordinator(converter:)
timestamp: 2025-10-29T00:11:40.691Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uigesturerecognizerrepresentable](/documentation/swiftui/uigesturerecognizerrepresentable)

**Instance Method**

# makeCoordinator(converter:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+

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
