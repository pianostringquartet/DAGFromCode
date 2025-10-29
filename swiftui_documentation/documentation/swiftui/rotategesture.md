---
title: RotateGesture
description: A gesture that recognizes a rotation motion and tracks the angle of the rotation.
source: https://developer.apple.com/documentation/swiftui/rotategesture
timestamp: 2025-10-29T00:14:41.280Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# RotateGesture

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> A gesture that recognizes a rotation motion and tracks the angle of the rotation.

```swift
struct RotateGesture
```

## Overview

A rotate gesture tracks how a rotation event sequence changes. To recognize a rotate gesture on a view, create and configure the gesture, and then add it to the view using the [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:)) modifier.

Add a rotate gesture to a [Rectangle](/documentation/swiftui/rectangle) and apply a rotation effect:

```swift
struct RotateGestureView: View {
    @State private var angle = Angle(degrees: 0.0)

    var rotation: some Gesture {
        RotateGesture()
            .onChanged { value in
                angle = value.rotation
            }
    }

    var body: some View {
        Rectangle()
            .frame(width: 200, height: 200, alignment: .center)
            .rotationEffect(angle)
            .gesture(rotation)
    }
}
```

## Conforms To

- [Gesture](/documentation/swiftui/gesture)

## Creating the gesture

- [init(minimumAngleDelta:)](/documentation/swiftui/rotategesture/init(minimumangledelta:)) Creates a rotation gesture with a minimum delta for the gesture to start.
- [minimumAngleDelta](/documentation/swiftui/rotategesture/minimumangledelta) The minimum delta required before the gesture succeeds.

## Recognizing gestures that change over time

- [gesture(_:)](/documentation/swiftui/view/gesture(_:))
- [gesture(_:isEnabled:)](/documentation/swiftui/view/gesture(_:isenabled:))
- [gesture(_:name:isEnabled:)](/documentation/swiftui/view/gesture(_:name:isenabled:))
- [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:))
- [DragGesture](/documentation/swiftui/draggesture)
- [WindowDragGesture](/documentation/swiftui/windowdraggesture)
- [MagnifyGesture](/documentation/swiftui/magnifygesture)
- [RotateGesture3D](/documentation/swiftui/rotategesture3d)
- [GestureMask](/documentation/swiftui/gesturemask)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
