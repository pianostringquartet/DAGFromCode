---
title: init(base:state:body:)
description: Creates a new gesture that’s the result of an ongoing gesture.
source: https://developer.apple.com/documentation/swiftui/gesturestategesture/init(base:state:body:)
timestamp: 2025-10-29T00:10:13.452Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gesturestategesture](/documentation/swiftui/gesturestategesture)

**Initializer**

# init(base:state:body:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a new gesture that’s the result of an ongoing gesture.

```swift
init(base: Base, state: GestureState<State>, body: @escaping (GestureStateGesture<Base, State>.Value, inout State, inout Transaction) -> Void)
```

## Parameters

**base**

The originating gesture.



**state**

The wrapped value of a [Gesture State](/documentation/swiftui/gesturestate) property.



**body**

The callback that SwiftUI invokes as the gesture’s value changes.



## Creating an in-progress gesture

- [base](/documentation/swiftui/gesturestategesture/base)
- [state](/documentation/swiftui/gesturestategesture/state)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
