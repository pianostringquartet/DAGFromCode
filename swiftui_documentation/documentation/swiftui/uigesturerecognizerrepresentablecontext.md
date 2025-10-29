---
title: UIGestureRecognizerRepresentableContext
description: Contextual information about the state of the system that you use to create and update a represented gesture recognizer.
source: https://developer.apple.com/documentation/swiftui/uigesturerecognizerrepresentablecontext
timestamp: 2025-10-29T00:13:34.986Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# UIGestureRecognizerRepresentableContext

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+

> Contextual information about the state of the system that you use to create and update a represented gesture recognizer.

```swift
struct UIGestureRecognizerRepresentableContext<Representable> where Representable : UIGestureRecognizerRepresentable
```

## Instance Properties

- [converter](/documentation/swiftui/uigesturerecognizerrepresentablecontext/converter) A structure used to convert locations to/from coordinate spaces in the hierarchy of the associated SwiftUI view.
- [coordinator](/documentation/swiftui/uigesturerecognizerrepresentablecontext/coordinator) The custom object that you use to communicate state changes from your gesture recognizer to other parts of your SwiftUI interface.

## Adding UIKit gesture recognizers into SwiftUI view hierarchies

- [UIGestureRecognizerRepresentable](/documentation/swiftui/uigesturerecognizerrepresentable)
- [UIGestureRecognizerRepresentableCoordinateSpaceConverter](/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
