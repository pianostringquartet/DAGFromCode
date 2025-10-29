---
title: NSGestureRecognizerRepresentableContext
description: Contextual information about the state of the system that you use to create and update a represented gesture recognizer.
source: https://developer.apple.com/documentation/swiftui/nsgesturerecognizerrepresentablecontext
timestamp: 2025-10-29T00:15:00.284Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# NSGestureRecognizerRepresentableContext

**Available on:** macOS 26.0+

> Contextual information about the state of the system that you use to create and update a represented gesture recognizer.

```swift
struct NSGestureRecognizerRepresentableContext<Representable> where Representable : NSGestureRecognizerRepresentable
```

## Instance Properties

- [converter](/documentation/swiftui/nsgesturerecognizerrepresentablecontext/converter) A structure used to convert locations to and from coordinate spaces in the hierarchy of the associated SwiftUI view.
- [coordinator](/documentation/swiftui/nsgesturerecognizerrepresentablecontext/coordinator) The custom object that you use to communicate state changes from your gesture recognizer to other parts of your SwiftUI interface.

## Adding AppKit gesture recognizers into SwiftUI view hierarchies

- [NSGestureRecognizerRepresentable](/documentation/swiftui/nsgesturerecognizerrepresentable)
- [NSGestureRecognizerRepresentableCoordinateSpaceConverter](/documentation/swiftui/nsgesturerecognizerrepresentablecoordinatespaceconverter)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
