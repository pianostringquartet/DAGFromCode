---
title: DragSession.Phase
description: The phase of the current drag session
source: https://developer.apple.com/documentation/swiftui/dragsession/phase-swift.enum
timestamp: 2025-10-29T00:12:22.501Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dragsession](/documentation/swiftui/dragsession)

**Enumeration**

# DragSession.Phase

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> The phase of the current drag session

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

- [DragSession.Phase.active](/documentation/swiftui/dragsession/phase-swift.enum/active) The drag has moved to a new location.
- [DragSession.Phase.dataTransferCompleted](/documentation/swiftui/dragsession/phase-swift.enum/datatransfercompleted) Dragged items have been transferred. You can remove temporary items, perform any cleanup if needed.
- [DragSession.Phase.ended(_:)](/documentation/swiftui/dragsession/phase-swift.enum/ended(_:)) The drag has ended.
- [DragSession.Phase.ending(_:)](/documentation/swiftui/dragsession/phase-swift.enum/ending(_:)) The drag is about to finish.
- [DragSession.Phase.initial](/documentation/swiftui/dragsession/phase-swift.enum/initial) The drag session is about to begin

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
