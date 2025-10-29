---
title: onLongPressGesture(minimumDuration:perform:onPressingChanged:)
description: Adds an action to perform when this view recognizes a long press gesture.
source: https://developer.apple.com/documentation/swiftui/view/onlongpressgesture(minimumduration:perform:onpressingchanged:)
timestamp: 2025-10-29T00:10:45.207Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onLongPressGesture(minimumDuration:perform:onPressingChanged:)

**Available on:** tvOS 14.0+

> Adds an action to perform when this view recognizes a long press gesture.

```swift
nonisolated func onLongPressGesture(minimumDuration: Double = 0.5, perform action: @escaping () -> Void, onPressingChanged: ((Bool) -> Void)? = nil) -> some View
```

## Parameters

**minimumDuration**

The minimum duration of the long press that must elapse before the gesture succeeds.



**action**

The action to perform when a long press is recognized.



**onPressingChanged**

A closure to run when the pressing state of the gesture changes, passing the current state as a parameter.



## Recognizing long press gestures

- [onLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:maximumdistance:perform:onpressingchanged:))
- [onLongTouchGesture(minimumDuration:perform:onTouchingChanged:)](/documentation/swiftui/view/onlongtouchgesture(minimumduration:perform:ontouchingchanged:))
- [LongPressGesture](/documentation/swiftui/longpressgesture)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
