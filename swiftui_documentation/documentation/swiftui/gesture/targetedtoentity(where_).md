---
title: targetedToEntity(where:)
description: Requires this gesture to target an entity that can be found in the results of the query.
source: https://developer.apple.com/documentation/swiftui/gesture/targetedtoentity(where:)
timestamp: 2025-10-29T00:13:55.532Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gesture](/documentation/swiftui/gesture)

**Instance Method**

# targetedToEntity(where:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 1.0+

> Requires this gesture to target an entity that can be found in the results of the query.

```swift
@MainActor @preconcurrency func targetedToEntity(where query: QueryPredicate<Entity>) -> some Gesture<EntityTargetValue<Self.Value>>
```

## Parameters

**query**

A query to filter which entity the gesture targets.



## Return Value

A `RealityCoordinateSpaceConverting` value containing the original gesture value along with the targeted entity.

## Using a gesture with a RealityKit entity

- [targetedToAnyEntity()](/documentation/swiftui/gesture/targetedtoanyentity())
- [targetedToEntity(_:)](/documentation/swiftui/gesture/targetedtoentity(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
