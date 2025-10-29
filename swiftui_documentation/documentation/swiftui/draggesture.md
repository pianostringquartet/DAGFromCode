---
title: DragGesture
description: A dragging motion that invokes an action as the drag-event sequence changes.
source: https://developer.apple.com/documentation/swiftui/draggesture
timestamp: 2025-10-29T00:13:19.874Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DragGesture

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 6.0+

> A dragging motion that invokes an action as the drag-event sequence changes.

```swift
struct DragGesture
```

## Overview

To recognize a drag gesture on a view, create and configure the gesture, and then add it to the view using the [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:)) modifier.

Add a drag gesture to a [Circle](/documentation/swiftui/circle) and change its color while the user performs the drag gesture:

```swift
struct DragGestureView: View {
    @State private var isDragging = false

    var drag: some Gesture {
        DragGesture()
            .onChanged { _ in self.isDragging = true }
            .onEnded { _ in self.isDragging = false }
    }

    var body: some View {
        Circle()
            .fill(self.isDragging ? Color.red : Color.blue)
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(drag)
    }
}
```

## Conforms To

- [Gesture](/documentation/swiftui/gesture)

## Creating a drag gesture

- [init(minimumDistance:coordinateSpace:)](/documentation/swiftui/draggesture/init(minimumdistance:coordinatespace:)-8ffe5) Creates a dragging gesture with the minimum dragging distance before the gesture succeeds and the coordinate space of the gesture’s location.
- [minimumDistance](/documentation/swiftui/draggesture/minimumdistance) The minimum dragging distance before the gesture succeeds.
- [coordinateSpace](/documentation/swiftui/draggesture/coordinatespace) The coordinate space in which to receive location values.

## Deprecated initializers

- [init(minimumDistance:coordinateSpace:)](/documentation/swiftui/draggesture/init(minimumdistance:coordinatespace:)-3804h) Creates a dragging gesture with the minimum dragging distance before the gesture succeeds and the coordinate space of the gesture’s location.

## Structures

- [DragGesture.Value](/documentation/swiftui/draggesture/value) The attributes of a drag gesture.

## Initializers

- [init(minimumDistance:coordinateSpace3D:)](/documentation/swiftui/draggesture/init(minimumdistance:coordinatespace3d:)) Creates a dragging gesture with the minimum dragging distance before the gesture succeeds and the coordinate space of the gesture’s location.
- [init(minimumDistance:coordinateSpace:)](/documentation/swiftui/draggesture/init(minimumdistance:coordinatespace:)) Creates a dragging gesture with the minimum dragging distance before the gesture succeeds and the coordinate space of the gesture’s location.

## Recognizing gestures that change over time

- [gesture(_:)](/documentation/swiftui/view/gesture(_:))
- [gesture(_:isEnabled:)](/documentation/swiftui/view/gesture(_:isenabled:))
- [gesture(_:name:isEnabled:)](/documentation/swiftui/view/gesture(_:name:isenabled:))
- [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:))
- [WindowDragGesture](/documentation/swiftui/windowdraggesture)
- [MagnifyGesture](/documentation/swiftui/magnifygesture)
- [RotateGesture](/documentation/swiftui/rotategesture)
- [RotateGesture3D](/documentation/swiftui/rotategesture3d)
- [GestureMask](/documentation/swiftui/gesturemask)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
