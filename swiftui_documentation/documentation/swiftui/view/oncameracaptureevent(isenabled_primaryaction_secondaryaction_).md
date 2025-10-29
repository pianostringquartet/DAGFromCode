---
title: onCameraCaptureEvent(isEnabled:primaryAction:secondaryAction:)
description: Used to register actions triggered by system capture events.
source: https://developer.apple.com/documentation/swiftui/view/oncameracaptureevent(isenabled:primaryaction:secondaryaction:)
timestamp: 2025-10-29T00:09:35.005Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onCameraCaptureEvent(isEnabled:primaryAction:secondaryAction:)

**Available on:** iOS 18.0+, iPadOS 18.0+

> Used to register actions triggered by system capture events.

```swift
@MainActor @preconcurrency func onCameraCaptureEvent(isEnabled: Bool = true, primaryAction: @escaping (AVCaptureEvent) -> Void, secondaryAction: @escaping (AVCaptureEvent) -> Void) -> some View
```

## Parameters

**isEnabled**

A boolean value indicating whether capture events trigger the provided actions or not. Set this value to `false` when your application cannot or will not respond to the action callbacks to avoid non-interactive buttons or UI elements.



**primaryAction**

An event handler called when a primary capture event is triggered.



**secondaryAction**

An event handler called when a secondary capture event is triggered.



## Discussion

Events may or may not be sent to applications based on the current system state. Backgrounded applications will not receive events, additionally events will only be sent to applications that are actively using the camera.

This API is for media capture use cases only.

## Responding to capture events

- [onCameraCaptureEvent(isEnabled:action:)](/documentation/swiftui/view/oncameracaptureevent(isenabled:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
