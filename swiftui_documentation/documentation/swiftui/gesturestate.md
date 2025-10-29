---
title: GestureState
description: A property wrapper type that updates a property while the user performs a gesture and resets the property back to its initial state when the gesture ends.
source: https://developer.apple.com/documentation/swiftui/gesturestate
timestamp: 2025-10-29T00:13:10.368Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# GestureState

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A property wrapper type that updates a property while the user performs a gesture and resets the property back to its initial state when the gesture ends.

```swift
@propertyWrapper @frozen struct GestureState<Value>
```

## Overview

Declare a property as `@GestureState`, pass as a binding to it as a parameter to a gesture’s [updating(_:body:)](/documentation/swiftui/gesture/updating(_:body:)) callback, and receive updates to it. A property that’s declared as `@GestureState` implicitly resets when the gesture becomes inactive, making it suitable for tracking transient state.

Add a long-press gesture to a [Circle](/documentation/swiftui/circle), and update the interface during the gesture by declaring a property as `@GestureState`:

```swift
struct SimpleLongPressGestureView: View {
    @GestureState private var isDetectingLongPress = false

    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 3)
            .updating($isDetectingLongPress) { currentState, gestureState, transaction in
                gestureState = currentState
            }
    }

    var body: some View {
        Circle()
            .fill(self.isDetectingLongPress ? Color.red : Color.green)
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(longPress)
    }
}
```

## Conforms To

- [DynamicProperty](/documentation/swiftui/dynamicproperty)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a gesture state

- [init(initialValue:)](/documentation/swiftui/gesturestate/init(initialvalue:)) Creates a view state that’s derived from a gesture with an initial value.
- [init(initialValue:reset:)](/documentation/swiftui/gesturestate/init(initialvalue:reset:)) Creates a view state that’s derived from a gesture with an initial state value and a closure that provides a transaction to reset it.
- [init(initialValue:resetTransaction:)](/documentation/swiftui/gesturestate/init(initialvalue:resettransaction:)) Creates a view state that’s derived from a gesture with an initial state value and a transaction to reset it.
- [init(reset:)](/documentation/swiftui/gesturestate/init(reset:)) Creates a view state that’s derived from a gesture with a closure that provides a transaction to reset it.
- [init(resetTransaction:)](/documentation/swiftui/gesturestate/init(resettransaction:)) Creates a view state that’s derived from a gesture with a transaction to reset it.
- [init(wrappedValue:)](/documentation/swiftui/gesturestate/init(wrappedvalue:)) Creates a view state that’s derived from a gesture.
- [init(wrappedValue:reset:)](/documentation/swiftui/gesturestate/init(wrappedvalue:reset:)) Creates a view state that’s derived from a gesture with a wrapped state value and a closure that provides a transaction to reset it.
- [init(wrappedValue:resetTransaction:)](/documentation/swiftui/gesturestate/init(wrappedvalue:resettransaction:)) Creates a view state that’s derived from a gesture with a wrapped state value and a transaction to reset it.

## Getting the state

- [wrappedValue](/documentation/swiftui/gesturestate/wrappedvalue) The wrapped value referenced by the gesture state property.
- [projectedValue](/documentation/swiftui/gesturestate/projectedvalue) A binding to the gesture state property.

## Managing gesture state

- [GestureStateGesture](/documentation/swiftui/gesturestategesture)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
