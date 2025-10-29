---
title: WorldRecenterPhase
description: A type that represents information associated with a phase of a system recenter event. Values of this type are passed to the closure specified in View.onWorldRecenter(action:).
source: https://developer.apple.com/documentation/swiftui/worldrecenterphase
timestamp: 2025-10-29T00:11:17.076Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# WorldRecenterPhase

**Available on:** macOS 26.0+, visionOS 26.0+

> A type that represents information associated with a phase of a system recenter event. Values of this type are passed to the closure specified in View.onWorldRecenter(action:).

```swift
enum WorldRecenterPhase
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Enumeration Cases

- [WorldRecenterPhase.began](/documentation/swiftui/worldrecenterphase/began) The app has begun to fade out. It is not re-positioned yet.
- [WorldRecenterPhase.ended](/documentation/swiftui/worldrecenterphase/ended) The app has begun to fade in after it has been re-positioned.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
