---
title: SpatialEventCollection.Event
description: A spatial event generated from an input like a touch or click that can drive gestures in the system.
source: https://developer.apple.com/documentation/swiftui/spatialeventcollection/event
timestamp: 2025-10-29T00:14:37.042Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spatialeventcollection](/documentation/swiftui/spatialeventcollection)

**Structure**

# SpatialEventCollection.Event

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 1.0+, watchOS 11.0+

> A spatial event generated from an input like a touch or click that can drive gestures in the system.

```swift
struct Event
```

## Overview

You receive a collection of these events in the form of a [Spatial Event Collection](/documentation/swiftui/spatialeventcollection) that’s the input to the [onChanged(_:)](/documentation/swiftui/gesture/onchanged(_:)) or [onEnded(_:)](/documentation/swiftui/gesture/onended(_:)) method of a [Spatial Event Gesture](/documentation/swiftui/spatialeventgesture). Inspect individual events to track interactions that enable you to create complex, multi-touch experiences in your app.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Identifiable](/documentation/Swift/Identifiable)

## Identifying the event

- [timestamp](/documentation/swiftui/spatialeventcollection/event/timestamp) The time the event was processed.
- [id](/documentation/swiftui/spatialeventcollection/event/id-swift.property) An identifier that uniquely identifies the event over its lifetime.
- [SpatialEventCollection.Event.ID](/documentation/swiftui/spatialeventcollection/event/id-swift.struct) A value that uniquely identifies an event over the course of its lifetime.
- [kind](/documentation/swiftui/spatialeventcollection/event/kind-swift.property) The event’s input source.
- [SpatialEventCollection.Event.Kind](/documentation/swiftui/spatialeventcollection/event/kind-swift.enum) The possible input sources or modes of an event.
- [modifierKeys](/documentation/swiftui/spatialeventcollection/event/modifierkeys) The set of active modifier keys at the time of this event.

## Locating the event

- [location](/documentation/swiftui/spatialeventcollection/event/location) The 2D location of the event.
- [location3D](/documentation/swiftui/spatialeventcollection/event/location3d) The 3D location of the touch.
- [selectionRay](/documentation/swiftui/spatialeventcollection/event/selectionray) The 3D ray used to target the touch.
- [inputDevicePose](/documentation/swiftui/spatialeventcollection/event/inputdevicepose-swift.property) The 3D position and orientation of the device controlling the touch, if one exists.
- [SpatialEventCollection.Event.InputDevicePose](/documentation/swiftui/spatialeventcollection/event/inputdevicepose-swift.struct) A pose describing the input device like a hand controlling the event.
- [targetedEntity](/documentation/swiftui/spatialeventcollection/event/targetedentity) The entity target for this touch, if one exists.

## Getting the event’s current phase

- [phase](/documentation/swiftui/spatialeventcollection/event/phase-swift.property) The phase of the event.
- [SpatialEventCollection.Event.Phase](/documentation/swiftui/spatialeventcollection/event/phase-swift.enum) The states that an event can have.

## Instance Properties

- [chirality](/documentation/swiftui/spatialeventcollection/event/chirality) The hand chirality (left or right) of this event, for relevant event kinds.
- [trackingAreaIdentifier](/documentation/swiftui/spatialeventcollection/event/trackingareaidentifier) The tracking area identifier of the event, if the gesture is attached to a , or  if the event didn’t hit a tracking area or the gesture isn’t attached to a .

## Accessing the collection’s events

- [subscript(_:)](/documentation/swiftui/spatialeventcollection/subscript(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
