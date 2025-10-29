---
title: continuityDevicePicker(isPresented:onDidConnect:)
description: A  should be used to discover and connect nearby continuity device through a button interface or other form of activation. On tvOS, this presents a fullscreen continuity device picker experience when selected. The modal view covers as much the screen of  as possible when a given condition is true.
source: https://developer.apple.com/documentation/swiftui/view/continuitydevicepicker(ispresented:ondidconnect:)
timestamp: 2025-10-29T00:12:15.831Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# continuityDevicePicker(isPresented:onDidConnect:)

**Available on:** tvOS 17.0+

> A  should be used to discover and connect nearby continuity device through a button interface or other form of activation. On tvOS, this presents a fullscreen continuity device picker experience when selected. The modal view covers as much the screen of  as possible when a given condition is true.

```swift
@MainActor @preconcurrency func continuityDevicePicker(isPresented: Binding<Bool>, onDidConnect: ((AVContinuityDevice?) -> Void)? = nil) -> some View
```

## Parameters

**isPresented**

A `Binding` to whether the modal view is presented.



**onDidConnect**

A closure executed when the picker successfully, connects AVContinuityDevice or nil if cancelled by a user.



## Displaying media

- [CameraView](/documentation/HomeKit/CameraView)
- [NowPlayingView](/documentation/WatchKit/NowPlayingView)
- [VideoPlayer](/documentation/AVKit/VideoPlayer)
- [cameraAnchor(isActive:)](/documentation/swiftui/view/cameraanchor(isactive:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
