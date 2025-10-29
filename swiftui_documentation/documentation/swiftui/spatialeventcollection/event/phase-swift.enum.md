---
title: SpatialEventCollection.Event.Phase
description: The states that an event can have.
source: https://developer.apple.com/documentation/swiftui/spatialeventcollection/event/phase-swift.enum
timestamp: 2025-10-29T00:15:12.081Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [spatialeventcollection](/documentation/swiftui/spatialeventcollection) › [event](/documentation/swiftui/spatialeventcollection/event)

**Enumeration**

# SpatialEventCollection.Event.Phase

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 1.0+, watchOS 11.0+

> The states that an event can have.

```swift
enum Phase
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)

## Getting the phase

- [SpatialEventCollection.Event.Phase.active](/documentation/swiftui/spatialeventcollection/event/phase-swift.enum/active) The phase is active and the state associated with it is guaranteed to produce at least one more update.
- [SpatialEventCollection.Event.Phase.cancelled](/documentation/swiftui/spatialeventcollection/event/phase-swift.enum/cancelled) The state associated with this phase was canceled and won’t produce any more updates.
- [SpatialEventCollection.Event.Phase.ended](/documentation/swiftui/spatialeventcollection/event/phase-swift.enum/ended) The state associated with this phase ended normally and won’t produce any more updates.

## Getting the event’s current phase

- [phase](/documentation/swiftui/spatialeventcollection/event/phase-swift.property)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
