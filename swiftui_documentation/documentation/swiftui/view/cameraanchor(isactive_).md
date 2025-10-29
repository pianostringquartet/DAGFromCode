---
title: cameraAnchor(isActive:)
description: Specifies the view that should act as the virtual camera for Apple Vision Pro 2D Persona stream.
source: https://developer.apple.com/documentation/swiftui/view/cameraanchor(isactive:)
timestamp: 2025-10-29T00:14:49.040Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# cameraAnchor(isActive:)

**Available on:** visionOS 2.0+

> Specifies the view that should act as the virtual camera for Apple Vision Pro 2D Persona stream.

```swift
@MainActor func cameraAnchor(isActive: Bool = true) -> some View
```

## Parameters

**isActive**

Whether or not the camera anchor is active.

You can use this value to ensure that only one camera anchor is active at a time if you want to create multiple views that could act as the anchor in your app.



## Discussion

This modifier can be used by visionOS apps to specify the placement of the virtual camera used to create a 2D stream of the user’s Persona. For example, a video conferencing app might add this modifier to the view that shows the other participants during a call. Then when the participant on visionOS looks at that view their Persona will make eye contact with the other participants on the call. The anchor will be at the center of the modified View.

```swift
ExampleAppVideoView()
    .cameraAnchor()
```

You might want to create multiple views with an anchor and then only activate the one that has focus.

```swift
struct ExampleSelfPreviewWhenFocusedView: View {
   @Environment(\.isFocused) var isFocused: Bool

   var body: some View {
       ExampleAppVideoView()
        #if os(visionOS)
            .cameraAnchor(isActive: isFocused)
        #endif
   }
}
```

> [!IMPORTANT]
> You should avoid creating multiple views with simultaneously active camera anchors. If multiple views with active camera anchors are found, the first created will have its parent View be used as the camera anchor, and a runtime error will be emitted.

## Displaying media

- [CameraView](/documentation/HomeKit/CameraView)
- [NowPlayingView](/documentation/WatchKit/NowPlayingView)
- [VideoPlayer](/documentation/AVKit/VideoPlayer)
- [continuityDevicePicker(isPresented:onDidConnect:)](/documentation/swiftui/view/continuitydevicepicker(ispresented:ondidconnect:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
