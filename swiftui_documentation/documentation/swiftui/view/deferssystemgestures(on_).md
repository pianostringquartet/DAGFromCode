---
title: defersSystemGestures(on:)
description: Sets the screen edge from which you want your gesture to take precedence over the system gesture.
source: https://developer.apple.com/documentation/swiftui/view/deferssystemgestures(on:)
timestamp: 2025-10-29T00:12:41.366Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# defersSystemGestures(on:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+

> Sets the screen edge from which you want your gesture to take precedence over the system gesture.

```swift
nonisolated func defersSystemGestures(on edges: Edge.Set) -> some View
```

## Parameters

**edges**

A value that indicates the screen edge from which you want your gesture to take precedence over the system gesture.



## Discussion

The following code defers the vertical screen edges system gestures of a given canvas.

```swift
struct DeferredView: View {
    var body: some View {
        Canvas()
            .defersSystemGestures(on: .vertical)
    }
}
```

## Defining custom gestures

- [highPriorityGesture(_:including:)](/documentation/swiftui/view/highprioritygesture(_:including:))
- [highPriorityGesture(_:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:isenabled:))
- [highPriorityGesture(_:name:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:name:isenabled:))
- [handGestureShortcut(_:isEnabled:)](/documentation/swiftui/view/handgestureshortcut(_:isenabled:))
- [Gesture](/documentation/swiftui/gesture)
- [AnyGesture](/documentation/swiftui/anygesture)
- [HandActivationBehavior](/documentation/swiftui/handactivationbehavior)
- [HandGestureShortcut](/documentation/swiftui/handgestureshortcut)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
