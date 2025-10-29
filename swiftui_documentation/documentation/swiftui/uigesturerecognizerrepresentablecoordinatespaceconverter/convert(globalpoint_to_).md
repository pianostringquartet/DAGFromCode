---
title: convert(globalPoint:to:)
description: Converts a point in the global coordinate space to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.
source: https://developer.apple.com/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter/convert(globalpoint:to:)
timestamp: 2025-10-29T00:09:36.620Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uigesturerecognizerrepresentablecoordinatespaceconverter](/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter)

**Instance Method**

# convert(globalPoint:to:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+

> Converts a point in the global coordinate space to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.

```swift
func convert(globalPoint: CGPoint, to coordinateSpace: some CoordinateSpaceProtocol = .local) -> CGPoint
```

## Parameters

**globalPoint**

The point in the global coordinate space.



**coordinateSpace**

The SwiftUI coordinate space to convert to.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
