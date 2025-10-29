---
title: location(in:)
description: Converts the represented gesture recognizer’s current location to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.
source: https://developer.apple.com/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter/location(in:)
timestamp: 2025-10-29T00:09:33.345Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsgesturerecognizerrepresentablecoordinatespaceconverter](/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter)

**Instance Method**

# location(in:)

**Available on:** macOS 26.0+

> Converts the represented gesture recognizer’s current location to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.

```swift
func location(in coordinateSpace: some CoordinateSpaceProtocol) -> CGPoint
```

## Parameters

**coordinateSpace**

The SwiftUI coordinate space to convert to.



## Return Value

The represrnted gesture recognizer’s current location converted into the given `coordinateSpace`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
