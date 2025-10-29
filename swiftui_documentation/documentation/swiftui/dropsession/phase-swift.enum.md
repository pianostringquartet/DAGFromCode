---
title: DropSession.Phase
description: The phase of the current drop session.
source: https://developer.apple.com/documentation/swiftui/dropsession/phase-swift.enum
timestamp: 2025-10-29T00:10:07.484Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dropsession](/documentation/swiftui/dropsession)

**Enumeration**

# DropSession.Phase

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> The phase of the current drop session.

```swift
enum Phase
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [CustomStringConvertible](/documentation/Swift/CustomStringConvertible)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Enumeration Cases

- [DropSession.Phase.active](/documentation/swiftui/dropsession/phase-swift.enum/active) The drop session is active inside the drop destination.
- [DropSession.Phase.dataTransferCompleted](/documentation/swiftui/dropsession/phase-swift.enum/datatransfercompleted) Dragged items have been transferred. You can remove temporary items, perform any cleanup if needed.
- [DropSession.Phase.ended(_:)](/documentation/swiftui/dropsession/phase-swift.enum/ended(_:)) The drop has ended.
- [DropSession.Phase.entering](/documentation/swiftui/dropsession/phase-swift.enum/entering) The drop session is entering the drop destination.
- [DropSession.Phase.exiting](/documentation/swiftui/dropsession/phase-swift.enum/exiting) The drop session has exited the drop destination.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
