---
title: WindowDragGesture
description: A gesture that recognizes the motion of and handles dragging a window.
source: https://developer.apple.com/documentation/swiftui/windowdraggesture
timestamp: 2025-10-29T00:10:43.931Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WindowDragGesture

**Available on:** macOS 15.0+

> A gesture that recognizes the motion of and handles dragging a window.

```swift
struct WindowDragGesture
```

## Overview

To recognize a window drag gesture on a view, create and configure the gesture, and then add it to the view using the [gesture(_:isEnabled:)](/documentation/swiftui/view/gesture(_:isenabled:)) modifier. Consider also letting the gesture [allowsWindowActivationEvents(_:)](/documentation/SwiftUI/View/allowsWindowActivationEvents(_:)) so that dragging the containing window works even when it’s inactive.

To add a window drag gesture to a [Circle](/documentation/swiftui/circle) and change its color while a user performs the window drag gesture:

```swift
struct MyView: View {
    @GestureState var isDraggingWindow = false

    var dragWindow: some Gesture {
        WindowDragGesture()
            .updating($isDraggingWindow) { _, state, _ in
                state = true
            }
    }

    var body: some View {
        Circle()
            .fill(isDraggingWindow ? Color.green : .blue)
            .frame(width: 50, height: 50)
            .gesture(dragWindow)
            .allowsWindowActivationEvents()
    }
}
```

## Conforms To

- [Gesture](/documentation/swiftui/gesture)

## Structures

- [WindowDragGesture.Value](/documentation/swiftui/windowdraggesture/value) The properties of a window drag gesture.

## Initializers

- [init()](/documentation/swiftui/windowdraggesture/init()) Creates a window drag gesture.

## Recognizing gestures that change over time

- [gesture(_:)](/documentation/swiftui/view/gesture(_:))
- [gesture(_:isEnabled:)](/documentation/swiftui/view/gesture(_:isenabled:))
- [gesture(_:name:isEnabled:)](/documentation/swiftui/view/gesture(_:name:isenabled:))
- [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:))
- [DragGesture](/documentation/swiftui/draggesture)
- [MagnifyGesture](/documentation/swiftui/magnifygesture)
- [RotateGesture](/documentation/swiftui/rotategesture)
- [RotateGesture3D](/documentation/swiftui/rotategesture3d)
- [GestureMask](/documentation/swiftui/gesturemask)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
