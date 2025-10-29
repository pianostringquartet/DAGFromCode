---
title: UIGestureRecognizerRepresentable
description: A wrapper for a  that you use to integrate that gesture recognizer into your SwiftUI hierarchy.
source: https://developer.apple.com/documentation/swiftui/uigesturerecognizerrepresentable
timestamp: 2025-10-29T00:12:23.835Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# UIGestureRecognizerRepresentable

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+

> A wrapper for a  that you use to integrate that gesture recognizer into your SwiftUI hierarchy.

```swift
@MainActor @preconcurrency protocol UIGestureRecognizerRepresentable
```

## Overview

Use a [UIGesture Recognizer Representable](/documentation/swiftui/uigesturerecognizerrepresentable) instance to create and manage a [UIGesture Recognizer](/documentation/UIKit/UIGestureRecognizer) object in your SwiftUI interface.

To add your gesture recognizer to a SwiftUI view, create an instance of [UIGesture Recognizer Representable](/documentation/swiftui/uigesturerecognizerrepresentable) and use the [gesture(_:)](/documentation/swiftui/view/gesture(_:)) modifier to attach it. The system calls the methods of your representable instance at appropriate times to create and update the gesture recognizer.

The following example shows the inclusion of a custom `MyGestureRecognizer` structure in the view hierarchy.

```swift
struct ContentView: View {
   var body: some View {
      VStack {
         Image("Mountain").gesture(MyGestureRecognizer())
      }
   }
}
```

Because your [UIGesture Recognizer Representable](/documentation/swiftui/uigesturerecognizerrepresentable) is a struct, it can use the environment, have data dependencies, and is more similar to views in SwiftUI. The system will call the appropriate methods on your instance to propagate the latest data.

## Handling Gesture Recognizer Actions

SwiftUI automatically installs a target to handle the gesture recognizer’s action on your behalf. Implement the `handleUIGestureRecognizerAction` method to react to the gesture recognizing its action.

You can optionally include a coordinator object to forward delegate messages from your gesture recognizer or add additional targets.

## Coordinate Space Conversions

The gesture recognizer you create may not be attached to a `UIView` in the hierarchy, or it may return a view with different geometry than your SwiftUI view.

To handle this, use the converter on the context to perform coordinate space conversions from the global coordinate space. You can pass the gesture recognizer and a SwiftUI coordinate space to the converter to retrieve a final converted point. Passing the [local](/documentation/swiftui/coordinatespaceprotocol/local) coordinate space (the default) will provide the point in the SwiftUI view the gesture recognizer is attached to.

## Associated Types

- [Coordinator](/documentation/swiftui/uigesturerecognizerrepresentable/coordinator) A type to coordinate with the gesture recognizer.
- [UIGestureRecognizerType](/documentation/swiftui/uigesturerecognizerrepresentable/uigesturerecognizertype) The type of  to be presented.

## Instance Methods

- [handleUIGestureRecognizerAction(_:context:)](/documentation/swiftui/uigesturerecognizerrepresentable/handleuigesturerecognizeraction(_:context:)) Handles recognition of the represented .
- [makeCoordinator(converter:)](/documentation/swiftui/uigesturerecognizerrepresentable/makecoordinator(converter:)) Creates the custom object that you use to communicate state changes from your gesture recognizer to other parts of your SwiftUI interface.
- [makeUIGestureRecognizer(context:)](/documentation/swiftui/uigesturerecognizerrepresentable/makeuigesturerecognizer(context:)) Creates an instance of the represented gesture recognizer.
- [updateUIGestureRecognizer(_:context:)](/documentation/swiftui/uigesturerecognizerrepresentable/updateuigesturerecognizer(_:context:)) Updates the  (and coordinator) to the latest configuration.

## Type Aliases

- [UIGestureRecognizerRepresentable.Context](/documentation/swiftui/uigesturerecognizerrepresentable/context) Contextual information about the state of the system that you use to create and update your gesture recognizer.
- [UIGestureRecognizerRepresentable.CoordinateSpaceConverter](/documentation/swiftui/uigesturerecognizerrepresentable/coordinatespaceconverter) A type used to convert coordinates to/from coordinate spaces in the hierarchy of the associated SwiftUI view.

## Adding UIKit gesture recognizers into SwiftUI view hierarchies

- [UIGestureRecognizerRepresentableContext](/documentation/swiftui/uigesturerecognizerrepresentablecontext)
- [UIGestureRecognizerRepresentableCoordinateSpaceConverter](/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
