---
title: updating(_:body:)
description: Updates the provided gesture state property as the gesture’s value changes.
source: https://developer.apple.com/documentation/swiftui/gesture/updating(_:body:)
timestamp: 2025-10-29T00:11:47.243Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gesture](/documentation/swiftui/gesture)

**Instance Method**

# updating(_:body:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Updates the provided gesture state property as the gesture’s value changes.

```swift
@MainActor @preconcurrency func updating<State>(_ state: GestureState<State>, body: @escaping (Self.Value, inout State, inout Transaction) -> Void) -> GestureStateGesture<Self, State>
```

## Parameters

**state**

A binding to a view’s [Gesture State](/documentation/swiftui/gesturestate) property.



**body**

The callback that SwiftUI invokes as the gesture’s value changes. Its `currentState` parameter is the updated state of the gesture. The `gestureState` parameter is the previous state of the gesture, and the `transaction` is the context of the gesture.



## Return Value

A version of the gesture that updates the provided `state` as the originating gesture’s value changes and that resets the `state` to its initial value when the user or the system ends or cancels the gesture.

## Discussion

Use this callback to update transient UI state as described in [Adding-Interactivity-with](/documentation/swiftui/adding-interactivity-with-gestures).

## Performing the gesture

- [onChanged(_:)](/documentation/swiftui/gesture/onchanged(_:))
- [onEnded(_:)](/documentation/swiftui/gesture/onended(_:))
- [Value](/documentation/swiftui/gesture/value)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
