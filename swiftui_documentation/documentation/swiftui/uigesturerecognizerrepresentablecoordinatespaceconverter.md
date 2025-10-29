---
title: UIGestureRecognizerRepresentableCoordinateSpaceConverter
description: A proxy structure used to convert locations to/from coordinate spaces in the hierarchy of the SwiftUI view associated with a .
source: https://developer.apple.com/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter
timestamp: 2025-10-29T00:14:37.813Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# UIGestureRecognizerRepresentableCoordinateSpaceConverter

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+

> A proxy structure used to convert locations to/from coordinate spaces in the hierarchy of the SwiftUI view associated with a .

```swift
struct UIGestureRecognizerRepresentableCoordinateSpaceConverter
```

## Instance Properties

- [localLocation](/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter/locallocation) The represented gesture recognizer’s current location in the coordinate space of the SwiftUI view it’s attached to.
- [localTranslation](/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter/localtranslation) The represented gesture recognizer’s current translation in the coordinate space of the SwiftUI view it’s attached to.
- [localVelocity](/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter/localvelocity) The represented gesture recognizer’s current velocity in the coordinate space of the SwiftUI view it’s attached to.

## Instance Methods

- [convert(globalPoint:to:)](/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter/convert(globalpoint:to:)) Converts a point in the global coordinate space to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.
- [location(in:)](/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter/location(in:)) Converts the represented gesture recognizer’s current location to a SwiftUI coordinate space  of an ancestor of the view the gesture recognizer is attached to.
- [translation(in:)](/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter/translation(in:)) Converts the represented gesture recognizer’s current translation to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.
- [velocity(in:)](/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter/velocity(in:)) Converts the represented gesture recognizer’s current velocity to a SwiftUI coordinate space of an ancestor of the view the gesture recognizer is attached to.

## Adding UIKit gesture recognizers into SwiftUI view hierarchies

- [UIGestureRecognizerRepresentable](/documentation/swiftui/uigesturerecognizerrepresentable)
- [UIGestureRecognizerRepresentableContext](/documentation/swiftui/uigesturerecognizerrepresentablecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
