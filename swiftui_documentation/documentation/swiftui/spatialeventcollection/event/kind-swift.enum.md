---
title: SpatialEventCollection.Event.Kind
description: The possible input sources or modes of an event.
source: https://developer.apple.com/documentation/swiftui/spatialeventcollection/event/kind-swift.enum
timestamp: 2025-10-29T00:14:20.979Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spatialeventcollection](/documentation/swiftui/spatialeventcollection) › [event](/documentation/swiftui/spatialeventcollection/event)

**Enumeration**

# SpatialEventCollection.Event.Kind

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 1.0+, watchOS 11.0+

> The possible input sources or modes of an event.

```swift
enum Kind
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)

## Getting the event type

- [SpatialEventCollection.Event.Kind.directPinch](/documentation/swiftui/spatialeventcollection/event/kind-swift.enum/directpinch) An event generated from a pinching hand in close proximity to content.
- [SpatialEventCollection.Event.Kind.indirectPinch](/documentation/swiftui/spatialeventcollection/event/kind-swift.enum/indirectpinch) An event generated from an indirectly targeted pinching hand.
- [SpatialEventCollection.Event.Kind.pointer](/documentation/swiftui/spatialeventcollection/event/kind-swift.enum/pointer) An event representing a click-based, indirect input device describing the input sequence from click to click release.
- [SpatialEventCollection.Event.Kind.touch](/documentation/swiftui/spatialeventcollection/event/kind-swift.enum/touch) An event generated from a touch directly targeting content.

## Enumeration Cases

- [SpatialEventCollection.Event.Kind.pencil](/documentation/swiftui/spatialeventcollection/event/kind-swift.enum/pencil) An event generated from a pencil making contact with content.

## Identifying the event

- [timestamp](/documentation/swiftui/spatialeventcollection/event/timestamp)
- [id](/documentation/swiftui/spatialeventcollection/event/id-swift.property)
- [SpatialEventCollection.Event.ID](/documentation/swiftui/spatialeventcollection/event/id-swift.struct)
- [kind](/documentation/swiftui/spatialeventcollection/event/kind-swift.property)
- [modifierKeys](/documentation/swiftui/spatialeventcollection/event/modifierkeys)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
