---
title: SpatialEventCollection
description: A collection of spatial input events that target a specific view.
source: https://developer.apple.com/documentation/swiftui/spatialeventcollection
timestamp: 2025-10-29T00:13:07.193Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SpatialEventCollection

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 1.0+, watchOS 11.0+

> A collection of spatial input events that target a specific view.

```swift
struct SpatialEventCollection
```

## Overview

You receive a structure of this type as an input to the [onChanged(_:)](/documentation/swiftui/gesture/onchanged(_:)) or [onEnded(_:)](/documentation/swiftui/gesture/onended(_:)) method of a [Spatial Event Gesture](/documentation/swiftui/spatialeventgesture). The structure contains a collection of [Event](/documentation/swiftui/spatialeventcollection/event) values that correspond to ongoing input events. You can look up a specific event in the collection by its [id-swift.property](/documentation/swiftui/spatialeventcollection/event/id-swift.property) value or iterate over all events in the collection to apply logic depending on the event’s state.

## Conforms To

- [Collection](/documentation/Swift/Collection)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Sequence](/documentation/Swift/Sequence)

## Accessing the collection’s events

- [SpatialEventCollection.Event](/documentation/swiftui/spatialeventcollection/event) A spatial event generated from an input like a touch or click that can drive gestures in the system.
- [subscript(_:)](/documentation/swiftui/spatialeventcollection/subscript(_:)) Retrieves an event using its unique identifier.

## Iterating over events in the collection

- [makeIterator()](/documentation/swiftui/spatialeventcollection/makeiterator()) Makes an iterator over all events in the collection.
- [SpatialEventCollection.Iterator](/documentation/swiftui/spatialeventcollection/iterator) An iterator over all events in the collection.

## Recognizing spatial events

- [SpatialEventGesture](/documentation/swiftui/spatialeventgesture)
- [Chirality](/documentation/swiftui/chirality)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
