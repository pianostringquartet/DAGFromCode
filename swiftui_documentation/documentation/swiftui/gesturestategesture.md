---
title: GestureStateGesture
description: A gesture that updates the state provided by a gesture’s updating callback.
source: https://developer.apple.com/documentation/swiftui/gesturestategesture
timestamp: 2025-10-29T00:14:52.631Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# GestureStateGesture

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A gesture that updates the state provided by a gesture’s updating callback.

```swift
@frozen struct GestureStateGesture<Base, State> where Base : Gesture
```

## Overview

A gesture’s [updating(_:body:)](/documentation/swiftui/gesture/updating(_:body:)) callback returns a `GestureStateGesture` instance for updating a transient state property that’s annotated with the [Gesture State](/documentation/swiftui/gesturestate) property wrapper.

## Conforms To

- [Gesture](/documentation/swiftui/gesture)

## Creating an in-progress gesture

- [init(base:state:body:)](/documentation/swiftui/gesturestategesture/init(base:state:body:)) Creates a new gesture that’s the result of an ongoing gesture.
- [base](/documentation/swiftui/gesturestategesture/base) The originating gesture.
- [state](/documentation/swiftui/gesturestategesture/state) A value that changes as the user performs the gesture.

## Supporting types

- [body](/documentation/swiftui/gesturestategesture/body) The updating gesture containing the originating gesture’s value, the updated state of the gesture, and a transaction.

## Managing gesture state

- [GestureState](/documentation/swiftui/gesturestate)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
