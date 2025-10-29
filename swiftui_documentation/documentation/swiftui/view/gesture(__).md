---
title: gesture(_:)
description: Attaches an  to the view.
source: https://developer.apple.com/documentation/swiftui/view/gesture(_:)
timestamp: 2025-10-29T00:10:39.412Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# gesture(_:)

**Available on:** macOS 26.0+

> Attaches an  to the view.

```swift
nonisolated func gesture(_ representable: some NSGestureRecognizerRepresentable) -> some View
```

## Parameters

**representable**

The [NSGesture Recognizer Representable](/documentation/swiftui/nsgesturerecognizerrepresentable) that creates and manages a gesture recognizer.



## Return Value

A view with an [NSGesture Recognizer Representable](/documentation/swiftui/nsgesturerecognizerrepresentable) attached.

## Recognizing gestures that change over time

- [gesture(_:isEnabled:)](/documentation/swiftui/view/gesture(_:isenabled:))
- [gesture(_:name:isEnabled:)](/documentation/swiftui/view/gesture(_:name:isenabled:))
- [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:))
- [DragGesture](/documentation/swiftui/draggesture)
- [WindowDragGesture](/documentation/swiftui/windowdraggesture)
- [MagnifyGesture](/documentation/swiftui/magnifygesture)
- [RotateGesture](/documentation/swiftui/rotategesture)
- [RotateGesture3D](/documentation/swiftui/rotategesture3d)
- [GestureMask](/documentation/swiftui/gesturemask)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
