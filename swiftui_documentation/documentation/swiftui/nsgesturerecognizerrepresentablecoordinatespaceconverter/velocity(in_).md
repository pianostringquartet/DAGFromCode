---
title: velocity(in:)
description: Converts the represented gesture recognizer’s current velocity to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.
source: https://developer.apple.com/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter/velocity(in:)
timestamp: 2025-10-29T00:14:01.960Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsgesturerecognizerrepresentablecoordinatespaceconverter](/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter)

**Instance Method**

# velocity(in:)

**Available on:** macOS 26.0+

> Converts the represented gesture recognizer’s current velocity to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.

```swift
func velocity(in coordinateSpace: some CoordinateSpaceProtocol) -> CGPoint?
```

## Parameters

**coordinateSpace**

The SwiftUI coordinate space to convert to.



## Return Value

The represented gesture recognizer’s current velocity converted to the given `coordinateSpace`, or `nil` if the represented gesture recognizer doesn’t respond to `-velocityInView:` selector.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
