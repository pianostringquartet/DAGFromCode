---
title: MagnifyGesture
description: A gesture that recognizes a magnification motion and tracks the amount of magnification.
source: https://developer.apple.com/documentation/swiftui/magnifygesture
timestamp: 2025-10-29T00:12:55.296Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# MagnifyGesture

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> A gesture that recognizes a magnification motion and tracks the amount of magnification.

```swift
struct MagnifyGesture
```

## Overview

A magnify gesture tracks how a magnification event sequence changes. To recognize a magnify gesture on a view, create and configure the gesture, and then add it to the view using the [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:)) modifier.

Add a magnify gesture to a [Circle](/documentation/swiftui/circle) that changes its size while the user performs the gesture:

```swift
struct MagnifyGestureView: View {
    @GestureState private var magnifyBy = 1.0

    var magnification: some Gesture {
        MagnifyGesture()
            .updating($magnifyBy) { value, gestureState, transaction in
                gestureState = value.magnification
            }
    }

    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .scaleEffect(magnifyBy)
            .gesture(magnification)
    }
}
```

## Conforms To

- [Gesture](/documentation/swiftui/gesture)

## Creating the gesture

- [init(minimumScaleDelta:)](/documentation/swiftui/magnifygesture/init(minimumscaledelta:)) Creates a magnify gesture with a given minimum delta for the gesture to start.
- [minimumScaleDelta](/documentation/swiftui/magnifygesture/minimumscaledelta) The minimum required delta before the gesture starts.

## Recognizing gestures that change over time

- [gesture(_:)](/documentation/swiftui/view/gesture(_:))
- [gesture(_:isEnabled:)](/documentation/swiftui/view/gesture(_:isenabled:))
- [gesture(_:name:isEnabled:)](/documentation/swiftui/view/gesture(_:name:isenabled:))
- [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:))
- [DragGesture](/documentation/swiftui/draggesture)
- [WindowDragGesture](/documentation/swiftui/windowdraggesture)
- [RotateGesture](/documentation/swiftui/rotategesture)
- [RotateGesture3D](/documentation/swiftui/rotategesture3d)
- [GestureMask](/documentation/swiftui/gesturemask)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
