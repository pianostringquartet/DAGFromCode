---
title: NSGestureRecognizerRepresentableCoordinateSpaceConverter
description: A structure used to convert locations to and from coordinate spaces in the hierarchy of the SwiftUI view associated with an .
source: https://developer.apple.com/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter
timestamp: 2025-10-29T00:13:54.841Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# NSGestureRecognizerRepresentableCoordinateSpaceConverter

**Available on:** macOS 26.0+

> A structure used to convert locations to and from coordinate spaces in the hierarchy of the SwiftUI view associated with an .

```swift
struct NSGestureRecognizerRepresentableCoordinateSpaceConverter
```

## Instance Properties

- [localLocation](/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter/locallocation) The represented gesture recognizer’s current location in the coordinate space of the SwiftUI view it’s attached to.
- [localTranslation](/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter/localtranslation) The represented gesture recognizer’s current translation in the coordinate space of the SwiftUI view it’s attached to, or  if the represented gesture recognizer doesn’t respond to  selector.
- [localVelocity](/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter/localvelocity) The represented gesture recognizer’s current velocity in the coordinate space of the SwiftUI view it’s attached to, or  if the represented gesture recognizer doesn’t respond to  selector.

## Instance Methods

- [convert(globalPoint:to:)](/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter/convert(globalpoint:to:)) Converts a point in the global coordinate space to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.
- [location(in:)](/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter/location(in:)) Converts the represented gesture recognizer’s current location to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.
- [translation(in:)](/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter/translation(in:)) Converts the represented gesture recognizer’s current translation to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.
- [velocity(in:)](/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter/velocity(in:)) Converts the represented gesture recognizer’s current velocity to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.

## Adding AppKit gesture recognizers into SwiftUI view hierarchies

- [NSGestureRecognizerRepresentable](/documentation/swiftui/nsgesturerecognizerrepresentable)
- [NSGestureRecognizerRepresentableContext](/documentation/swiftui/nsgesturerecognizerrepresentablecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
