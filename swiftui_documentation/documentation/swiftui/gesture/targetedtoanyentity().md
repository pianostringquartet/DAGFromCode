---
title: targetedToAnyEntity()
description: Requires this gesture to target an entity.
source: https://developer.apple.com/documentation/swiftui/gesture/targetedtoanyentity()
timestamp: 2025-10-29T00:09:42.874Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gesture](/documentation/swiftui/gesture)

**Instance Method**

# targetedToAnyEntity()

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 1.0+

> Requires this gesture to target an entity.

```swift
@MainActor @preconcurrency func targetedToAnyEntity() -> some Gesture<EntityTargetValue<Self.Value>>
```

## Return Value

A `RealityCoordinateSpaceConvertible`value containing the original gesture value along with the targeted entity.

## Using a gesture with a RealityKit entity

- [targetedToEntity(_:)](/documentation/swiftui/gesture/targetedtoentity(_:))
- [targetedToEntity(where:)](/documentation/swiftui/gesture/targetedtoentity(where:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
