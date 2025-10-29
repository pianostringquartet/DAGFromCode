---
title: onLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)
description: Adds an action to perform when this view recognizes a long press gesture.
source: https://developer.apple.com/documentation/swiftui/view/onlongpressgesture(minimumduration:maximumdistance:perform:onpressingchanged:)
timestamp: 2025-10-29T00:15:24.005Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 6.0+

> Adds an action to perform when this view recognizes a long press gesture.

```swift
nonisolated func onLongPressGesture(minimumDuration: Double = 0.5, maximumDistance: CGFloat = 10, perform action: @escaping () -> Void, onPressingChanged: ((Bool) -> Void)? = nil) -> some View
```

## Parameters

**minimumDuration**

The minimum duration of the long press that must elapse before the gesture succeeds.



**maximumDistance**

The maximum distance that the fingers or cursor performing the long press can move before the gesture fails.



**action**

The action to perform when a long press is recognized.



**onPressingChanged**

A closure to run when the pressing state of the gesture changes, passing the current state as a parameter.



## Recognizing long press gestures

- [onLongPressGesture(minimumDuration:perform:onPressingChanged:)](/documentation/swiftui/view/onlongpressgesture(minimumduration:perform:onpressingchanged:))
- [onLongTouchGesture(minimumDuration:perform:onTouchingChanged:)](/documentation/swiftui/view/onlongtouchgesture(minimumduration:perform:ontouchingchanged:))
- [LongPressGesture](/documentation/swiftui/longpressgesture)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
