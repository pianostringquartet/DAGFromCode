---
title: onLongTouchGesture(minimumDuration:perform:onTouchingChanged:)
description: Adds an action to perform when this view recognizes a remote long touch gesture. A long touch gesture is when the finger is on the remote touch surface without actually pressing.
source: https://developer.apple.com/documentation/swiftui/view/onlongtouchgesture(minimumduration:perform:ontouchingchanged:)
timestamp: 2025-10-29T00:09:27.375Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onLongTouchGesture(minimumDuration:perform:onTouchingChanged:)

**Available on:** tvOS 16.0+

> Adds an action to perform when this view recognizes a remote long touch gesture. A long touch gesture is when the finger is on the remote touch surface without actually pressing.

```swift
nonisolated func onLongTouchGesture(minimumDuration: Double = 0.5, perform action: @escaping () -> Void, onTouchingChanged: ((Bool) -> Void)? = nil) -> some View
```

## Parameters

**minimumDuration**

The minimum duration of the long touch that must elapse before the gesture succeeds.



**action**

The action to perform when a long touch is recognized



**onTouchingChanged**

A closure to run when the touching state of the gesture changes, passing the current state as a parameter.



## Recognizing long press gestures

- [onLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:maximumdistance:perform:onpressingchanged:))
- [onLongPressGesture(minimumDuration:perform:onPressingChanged:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:perform:onpressingchanged:))
- [LongPressGesture](/documentation/swiftui/longpressgesture)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
