---
title: SpatialTapGesture
description: A gesture that recognizes one or more taps and reports their location.
source: https://developer.apple.com/documentation/swiftui/spatialtapgesture
timestamp: 2025-10-29T00:15:11.923Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SpatialTapGesture

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> A gesture that recognizes one or more taps and reports their location.

```swift
struct SpatialTapGesture
```

## Overview

To recognize a tap gesture on a view, create and configure the gesture, and then add it to the view using the [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:)) modifier. The following code adds a tap gesture to a [Circle](/documentation/swiftui/circle) that toggles the color of the circle based on the tap location:

```swift
struct TapGestureView: View {
    @State private var location: CGPoint = .zero

    var tap: some Gesture {
        SpatialTapGesture()
            .onEnded { event in
                self.location = event.location
             }
    }

    var body: some View {
        Circle()
            .fill(self.location.y > 50 ? Color.blue : Color.red)
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(tap)
    }
}
```

## Conforms To

- [Gesture](/documentation/swiftui/gesture)

## Creating a spatial tap gesture

- [init(count:coordinateSpace:)](/documentation/swiftui/spatialtapgesture/init(count:coordinatespace:)-75s7q) Creates a tap gesture with the number of required taps and the coordinate space of the gesture’s location.
- [coordinateSpace](/documentation/swiftui/spatialtapgesture/coordinatespace) The coordinate space in which to receive location values.
- [count](/documentation/swiftui/spatialtapgesture/count) The required number of tap events.

## Getting the gesture’s value

- [SpatialTapGesture.Value](/documentation/swiftui/spatialtapgesture/value) The attributes of a tap gesture.

## Deprecated initializers

- [init(count:coordinateSpace:)](/documentation/swiftui/spatialtapgesture/init(count:coordinatespace:)-1b85g) Creates a tap gesture with the number of required taps and the coordinate space of the gesture’s location.

## Initializers

- [init(count:coordinateSpace3D:)](/documentation/swiftui/spatialtapgesture/init(count:coordinatespace3d:)) Creates a tap gesture with the number of required taps and the coordinate space of the gesture’s location.
- [init(count:coordinateSpace:)](/documentation/swiftui/spatialtapgesture/init(count:coordinatespace:)) Creates a tap gesture with the number of required taps and the coordinate space of the gesture’s location.

## Recognizing tap gestures

- [onTapGesture(count:perform:)](/documentation/swiftui/view/ontapgesture(count:perform:))
- [onTapGesture(count:coordinateSpace:perform:)](/documentation/swiftui/view/ontapgesture(count:coordinatespace:perform:))
- [TapGesture](/documentation/swiftui/tapgesture)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
