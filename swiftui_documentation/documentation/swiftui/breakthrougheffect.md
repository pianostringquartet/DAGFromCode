---
title: BreakthroughEffect
source: https://developer.apple.com/documentation/swiftui/breakthrougheffect
timestamp: 2025-10-29T00:14:23.905Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# BreakthroughEffect

**Available on:** visionOS 26.0+

```swift
struct BreakthroughEffect
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [automatic](/documentation/swiftui/breakthrougheffect/automatic) The system will choose the best effect for the type of element and its position within the scene. This might result in no breakthrough effect.
- [none](/documentation/swiftui/breakthrougheffect/none) The element is clipped by occluding content. This is not supported when used to customize a sheet breakthrough effect.
- [prominent](/documentation/swiftui/breakthrougheffect/prominent) The element is prominently revealed through occluding content.
- [subtle](/documentation/swiftui/breakthrougheffect/subtle) The element is subtly blended over occluding content.

## Configuring passthrough

- [preferredSurroundingsEffect(_:)](/documentation/swiftui/view/preferredsurroundingseffect(_:))
- [SurroundingsEffect](/documentation/swiftui/surroundingseffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
