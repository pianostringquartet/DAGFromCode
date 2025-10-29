---
title: convert(globalPoint:to:)
description: Converts a point in the global coordinate space to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.
source: https://developer.apple.com/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter/convert(globalpoint:to:)
timestamp: 2025-10-29T00:10:34.887Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsgesturerecognizerrepresentablecoordinatespaceconverter](/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter)

**Instance Method**

# convert(globalPoint:to:)

**Available on:** macOS 26.0+

> Converts a point in the global coordinate space to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.

```swift
func convert(globalPoint: CGPoint, to coordinateSpace: some CoordinateSpaceProtocol = .local) -> CGPoint
```

## Parameters

**globalPoint**

The point in the global coordinate space.



**coordinateSpace**

The SwiftUI coordinate space to convert to.



## Return Value

A point converted to the given `coordinateSpace`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
