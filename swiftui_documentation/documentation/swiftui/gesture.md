---
title: Gesture
description: An instance that matches a sequence of events to a gesture, and returns a stream of values for each of its states.
source: https://developer.apple.com/documentation/swiftui/gesture
timestamp: 2025-10-29T00:10:24.845Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# Gesture

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An instance that matches a sequence of events to a gesture, and returns a stream of values for each of its states.

```swift
@MainActor @preconcurrency protocol Gesture<Value>
```

## Overview

Create custom gestures by declaring types that conform to the `Gesture` protocol.

## Conforming Types

- [AnyGesture](/documentation/swiftui/anygesture)
- [DragGesture](/documentation/swiftui/draggesture)
- [ExclusiveGesture](/documentation/swiftui/exclusivegesture)
- [GestureStateGesture](/documentation/swiftui/gesturestategesture)
- [LongPressGesture](/documentation/swiftui/longpressgesture)
- [MagnificationGesture](/documentation/swiftui/magnificationgesture)
- [MagnifyGesture](/documentation/swiftui/magnifygesture)
- [RotateGesture](/documentation/swiftui/rotategesture)
- [RotateGesture3D](/documentation/swiftui/rotategesture3d)
- [RotationGesture](/documentation/swiftui/rotationgesture)
- [SequenceGesture](/documentation/swiftui/sequencegesture)
- [SimultaneousGesture](/documentation/swiftui/simultaneousgesture)
- [SpatialEventGesture](/documentation/swiftui/spatialeventgesture)
- [SpatialTapGesture](/documentation/swiftui/spatialtapgesture)
- [TapGesture](/documentation/swiftui/tapgesture)
- [WindowDragGesture](/documentation/swiftui/windowdraggesture)

## Implementing a custom gesture

- [body](/documentation/swiftui/gesture/body-swift.property) The content and behavior of the gesture.
- [Body](/documentation/swiftui/gesture/body-swift.associatedtype) The type of gesture representing the body of .

## Performing the gesture

- [updating(_:body:)](/documentation/swiftui/gesture/updating(_:body:)) Updates the provided gesture state property as the gesture’s value changes.
- [onChanged(_:)](/documentation/swiftui/gesture/onchanged(_:)) Adds an action to perform when the gesture’s value changes.
- [onEnded(_:)](/documentation/swiftui/gesture/onended(_:)) Adds an action to perform when the gesture ends.
- [Value](/documentation/swiftui/gesture/value) The type representing the gesture’s value.

## Composing gestures

- [simultaneously(with:)](/documentation/swiftui/gesture/simultaneously(with:)) Combines a gesture with another gesture to create a new gesture that recognizes both gestures at the same time.
- [sequenced(before:)](/documentation/swiftui/gesture/sequenced(before:)) Sequences a gesture with another one to create a new gesture, which results in the second gesture only receiving events after the first gesture succeeds.
- [exclusively(before:)](/documentation/swiftui/gesture/exclusively(before:)) Combines two gestures exclusively to create a new gesture where only one gesture succeeds, giving precedence to the first gesture.

## Adding modifier keys to a gesture

- [modifiers(_:)](/documentation/swiftui/gesture/modifiers(_:)) Combines a gesture with keyboard modifiers.

## Transforming a gesture

- [map(_:)](/documentation/swiftui/gesture/map(_:)) Returns a gesture that uses the given closure to map over this gesture’s value.

## Customizing gesture activation

- [handActivationBehavior(_:)](/documentation/swiftui/gesture/handactivationbehavior(_:)) Customizes the activation behavior for a gesture when driven by hand or hand-like input.

## Using a gesture with a RealityKit entity

- [targetedToAnyEntity()](/documentation/swiftui/gesture/targetedtoanyentity()) Requires this gesture to target an entity.
- [targetedToEntity(_:)](/documentation/swiftui/gesture/targetedtoentity(_:)) Requires this gesture to target an entity or a descendant of entity.
- [targetedToEntity(where:)](/documentation/swiftui/gesture/targetedtoentity(where:)) Requires this gesture to target an entity that can be found in the results of the query.

## Defining custom gestures

- [highPriorityGesture(_:including:)](/documentation/swiftui/view/highprioritygesture(_:including:))
- [highPriorityGesture(_:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:isenabled:))
- [highPriorityGesture(_:name:isEnabled:)](/documentation/swiftui/view/highprioritygesture(_:name:isenabled:))
- [handGestureShortcut(_:isEnabled:)](/documentation/swiftui/view/handgestureshortcut(_:isenabled:))
- [defersSystemGestures(on:)](/documentation/swiftui/view/deferssystemgestures(on:))
- [AnyGesture](/documentation/swiftui/anygesture)
- [HandActivationBehavior](/documentation/swiftui/handactivationbehavior)
- [HandGestureShortcut](/documentation/swiftui/handgestureshortcut)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
