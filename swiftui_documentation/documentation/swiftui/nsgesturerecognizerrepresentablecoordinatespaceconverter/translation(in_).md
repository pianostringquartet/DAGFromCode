---
title: translation(in:)
description: Converts the represented gesture recognizer’s current translation to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.
source: https://developer.apple.com/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter/translation(in:)
timestamp: 2025-10-29T00:11:57.014Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsgesturerecognizerrepresentablecoordinatespaceconverter](/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter)

**Instance Method**

# translation(in:)

**Available on:** macOS 26.0+

> Converts the represented gesture recognizer’s current translation to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.

```swift
func translation(in coordinateSpace: some CoordinateSpaceProtocol) -> CGPoint?
```

## Parameters

**coordinateSpace**

The SwiftUI coordinate space to convert to.



## Return Value

The represented gesture recognizer’s current translation converted to the given `coordinateSpace`, or `nil` if the represented gesture recognizer doesn’t respond to `-translationInView:` selector.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
