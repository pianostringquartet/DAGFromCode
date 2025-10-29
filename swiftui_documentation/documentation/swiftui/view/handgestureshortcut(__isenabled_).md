---
title: handGestureShortcut(_:isEnabled:)
description: Assigns a hand gesture shortcut to the modified control.
source: https://developer.apple.com/documentation/swiftui/view/handgestureshortcut(_:isenabled:)
timestamp: 2025-10-29T00:10:18.037Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# handGestureShortcut(_:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, watchOS 11.0+

> Assigns a hand gesture shortcut to the modified control.

```swift
nonisolated func handGestureShortcut(_ shortcut: HandGestureShortcut, isEnabled: Bool = true) -> some View
```

## Parameters

**shortcut**

The shortcut to associate with this control.



**isEnabled**

A Boolean value that indicates whether the shortcut is is enabled for this control.



## Discussion

Performing the control’s shortcut while the control is anywhere in the frontmost scene is equivalent to direct interaction with the control to perform its primary action.

The following example lets users of a watchOS music app toggle playback by double-tapping their thumb and index finger together:

```swift
struct PlaybackControls: View {
    let model: TrackModel

    var body: some View {
        HStack {
            Button("Skip Back") {
                model.skipBack()
            }

            Button("Play/Pause") {
                model.playPause()
            }
            .handGestureShortcut(.primaryAction)

            Button("Skip Forward") {
                model.skipForward()
            }
        }
    }
}
```

The target of a hand gesture shortcut is resolved in a leading-to-trailing traversal of the active scene.

## Defining custom gestures

- [highPriorityGesture(_:including:)](/documentation/swiftui/view/highprioritygesture(_:including:))
- [highPriorityGesture(_:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:isenabled:))
- [highPriorityGesture(_:name:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:name:isenabled:))
- [defersSystemGestures(on:)](/documentation/swiftui/view/deferssystemgestures(on:))
- [Gesture](/documentation/swiftui/gesture)
- [AnyGesture](/documentation/swiftui/anygesture)
- [HandActivationBehavior](/documentation/swiftui/handactivationbehavior)
- [HandGestureShortcut](/documentation/swiftui/handgestureshortcut)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
