---
title: targetedToEntity(_:)
description: Requires this gesture to target an entity or a descendant of entity.
source: https://developer.apple.com/documentation/swiftui/gesture/targetedtoentity(_:)
timestamp: 2025-10-29T00:14:28.447Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gesture](/documentation/swiftui/gesture)

**Instance Method**

# targetedToEntity(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 1.0+

> Requires this gesture to target an entity or a descendant of entity.

```swift
@MainActor @preconcurrency func targetedToEntity(_ entity: Entity) -> some Gesture<EntityTargetValue<Self.Value>>
```

## Parameters

**entity**

The entity the gesture targets.



## Return Value

A `RealityCoordinateSpaceConverting` value containing the original gesture value along with the targeted entity.

## Using a gesture with a RealityKit entity

- [targetedToAnyEntity()](/documentation/swiftui/gesture/targetedtoanyentity())
- [targetedToEntity(where:)](/documentation/swiftui/gesture/targetedtoentity(where:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
