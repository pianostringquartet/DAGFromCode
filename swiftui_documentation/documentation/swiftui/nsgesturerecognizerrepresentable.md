---
title: NSGestureRecognizerRepresentable
description: A wrapper for an  that you use to integrate that gesture recognizer into your SwiftUI hierarchy.
source: https://developer.apple.com/documentation/swiftui/nsgesturerecognizerrepresentable
timestamp: 2025-10-29T00:14:50.686Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# NSGestureRecognizerRepresentable

**Available on:** macOS 26.0+

> A wrapper for an  that you use to integrate that gesture recognizer into your SwiftUI hierarchy.

```swift
@MainActor @preconcurrency protocol NSGestureRecognizerRepresentable
```

## Overview

Use an [NSGesture Recognizer Representable](/documentation/swiftui/nsgesturerecognizerrepresentable) instance to create and manage an [NSGesture Recognizer](/documentation/AppKit/NSGestureRecognizer) object in your SwiftUI interface.

To add your gesture recognizer to a SwiftUI view, create an instance of [NSGesture Recognizer Representable](/documentation/swiftui/nsgesturerecognizerrepresentable) and use the [gesture(_:)](/documentation/swiftui/view/gesture(_:)) modifier to attach it. The system calls the methods of your representable instance at appropriate times to create and update the gesture recognizer.

The following example shows the inclusion of a custom `MyGestureRecognizer` structure in the view hierarchy.

```swift
struct ContentView: View {
   var body: some View {
      VStack {
         Image("Mountain")
             .gesture(MyGestureRecognizer())
      }
   }
}
```

[NSGesture Recognizer Representable](/documentation/swiftui/nsgesturerecognizerrepresentable) types can use the environment and have data dependencies, similar to views and view representables. The system will call the appropriate methods on your instance to propagate the latest data.

## Handling Gesture Recognizer Actions

SwiftUI automatically installs a target to handle the gesture recognizer’s action on your behalf. Implement the `handleNSGestureRecognizerAction` method to react to the gesture recognizing its action.

You can optionally include a coordinator object to forward delegate messages from your gesture recognizer or add additional targets.

## Coordinate Space Conversions

The gesture recognizer you create may not be attached to an `NSView` in the hierarchy, or it may return a view with different geometry than your SwiftUI view.

To handle this, use the converter on the context to perform coordinate space conversions from the global coordinate space. You can pass the gesture recognizer and a SwiftUI coordinate space to the converter to retrieve a final converted point. Passing the [local](/documentation/swiftui/coordinatespaceprotocol/local) coordinate space (the default) will provide the point in the SwiftUI view the gesture recognizer is attached to.

## Associated Types

- [Coordinator](/documentation/swiftui/nsgesturerecognizerrepresentable/coordinator) A type to coordinate with the gesture recognizer.
- [NSGestureRecognizerType](/documentation/swiftui/nsgesturerecognizerrepresentable/nsgesturerecognizertype) The type of  to be presented.

## Instance Methods

- [handleNSGestureRecognizerAction(_:context:)](/documentation/swiftui/nsgesturerecognizerrepresentable/handlensgesturerecognizeraction(_:context:)) Handles recognition of the represented .
- [makeCoordinator(converter:)](/documentation/swiftui/nsgesturerecognizerrepresentable/makecoordinator(converter:)) Creates the custom object that you use to communicate state changes from your gesture recognizer to other parts of your SwiftUI interface.
- [makeNSGestureRecognizer(context:)](/documentation/swiftui/nsgesturerecognizerrepresentable/makensgesturerecognizer(context:)) Creates an instance of the represented gesture recognizer.
- [updateNSGestureRecognizer(_:context:)](/documentation/swiftui/nsgesturerecognizerrepresentable/updatensgesturerecognizer(_:context:)) Updates the  (and coordinator) to the latest configuration.

## Type Aliases

- [NSGestureRecognizerRepresentable.Context](/documentation/swiftui/nsgesturerecognizerrepresentable/context) Contextual information about the state of the system that you use to create and update your gesture recognizer.
- [NSGestureRecognizerRepresentable.CoordinateSpaceConverter](/documentation/swiftui/nsgesturerecognizerrepresentable/coordinatespaceconverter) A type used to convert coordinates to/from coordinate spaces in the hierarchy of the associated SwiftUI view.

## Adding AppKit gesture recognizers into SwiftUI view hierarchies

- [NSGestureRecognizerRepresentableContext](/documentation/swiftui/nsgesturerecognizerrepresentablecontext)
- [NSGestureRecognizerRepresentableCoordinateSpaceConverter](/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
