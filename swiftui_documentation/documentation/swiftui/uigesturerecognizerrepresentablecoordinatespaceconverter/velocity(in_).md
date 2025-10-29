---
title: velocity(in:)
description: Converts the represented gesture recognizer’s current velocity to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.
source: https://developer.apple.com/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter/velocity(in:)
timestamp: 2025-10-29T00:11:36.657Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uigesturerecognizerrepresentablecoordinatespaceconverter](/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter)

**Instance Method**

# velocity(in:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+

> Converts the represented gesture recognizer’s current velocity to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.

```swift
func velocity(in coordinateSpace: some CoordinateSpaceProtocol) -> CGPoint?
```

## Parameters

**coordinateSpace**

The SwiftUI coordinate space to convert to.



## Discussion

If the gesture recognizer does not implement a `velocityInView:` method, returns nil.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
