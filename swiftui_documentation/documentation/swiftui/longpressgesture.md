---
title: LongPressGesture
description: A gesture that succeeds when the user performs a long press.
source: https://developer.apple.com/documentation/swiftui/longpressgesture
timestamp: 2025-10-29T00:10:52.958Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# LongPressGesture

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 14.0+, visionOS 1.0+, watchOS 6.0+

> A gesture that succeeds when the user performs a long press.

```swift
struct LongPressGesture
```

## Overview

To recognize a long-press gesture on a view, create and configure the gesture, then add it to the view using the [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:)) modifier.

Add a long-press gesture to a [Circle](/documentation/swiftui/circle) to animate its color from blue to red, and then change it to green when the gesture ends:

```swift
struct LongPressGestureView: View {
    @GestureState private var isDetectingLongPress = false
    @State private var completedLongPress = false

    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 3)
            .updating($isDetectingLongPress) { currentState, gestureState,
                    transaction in
                gestureState = currentState
                transaction.animation = Animation.easeIn(duration: 2.0)
            }
            .onEnded { finished in
                self.completedLongPress = finished
            }
    }

    var body: some View {
        Circle()
            .fill(self.isDetectingLongPress ?
                Color.red :
                (self.completedLongPress ? Color.green : Color.blue))
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(longPress)
    }
}
```

## Conforms To

- [Gesture](/documentation/swiftui/gesture)

## Creating a long press gesture

- [init(minimumDuration:)](/documentation/swiftui/longpressgesture/init(minimumduration:)) Creates a long-press gesture with a minimum duration
- [init(minimumDuration:maximumDistance:)](/documentation/swiftui/longpressgesture/init(minimumduration:maximumdistance:)) Creates a long-press gesture with a minimum duration and a maximum distance that the interaction can move before the gesture fails.
- [minimumDuration](/documentation/swiftui/longpressgesture/minimumduration) The minimum duration of the long press that must elapse before the gesture succeeds.
- [maximumDistance](/documentation/swiftui/longpressgesture/maximumdistance) The maximum distance that the long press can move before the gesture fails.

## Recognizing long press gestures

- [onLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:maximumdistance:perform:onpressingchanged:))
- [onLongPressGesture(minimumDuration:perform:onPressingChanged:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:perform:onpressingchanged:))
- [onLongTouchGesture(minimumDuration:perform:onTouchingChanged:)](/documentation/swiftui/view/onlongtouchgesture(minimumduration:perform:ontouchingchanged:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
