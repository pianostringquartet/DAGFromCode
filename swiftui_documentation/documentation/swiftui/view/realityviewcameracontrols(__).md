---
title: realityViewCameraControls(_:)
description: Adds gestures that control the position and direction of a virtual camera.
source: https://developer.apple.com/documentation/swiftui/view/realityviewcameracontrols(_:)
timestamp: 2025-10-29T00:14:49.557Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# realityViewCameraControls(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+

> Adds gestures that control the position and direction of a virtual camera.

```swift
@MainActor @preconcurrency func realityViewCameraControls(_ controls: CameraControls) -> some View
```

## Discussion

You can use a drag gesture from a mouse, trackpad, or screen touches with iOS and iPadOS devices to `.tilt`, `.pan`, `.orbit`, or `.dolly` a virtual camera.

## Configuring camera controls

- [realityViewCameraControls](/documentation/swiftui/environmentvalues/realityviewcameracontrols)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
