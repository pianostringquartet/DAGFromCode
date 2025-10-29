---
title: DragDropPreviewsFormation
description: On macOS, describes the way the dragged previews are visually composed. Both drag sources and drop destination can specify their desired preview formation.
source: https://developer.apple.com/documentation/swiftui/dragdroppreviewsformation
timestamp: 2025-10-29T00:11:50.461Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DragDropPreviewsFormation

**Available on:** macOS 26.0+

> On macOS, describes the way the dragged previews are visually composed. Both drag sources and drop destination can specify their desired preview formation.

```swift
struct DragDropPreviewsFormation
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [CustomStringConvertible](/documentation/Swift/CustomStringConvertible)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [default](/documentation/swiftui/dragdroppreviewsformation/default) System-determined composition.
- [list](/documentation/swiftui/dragdroppreviewsformation/list) Drag images are laid out vertically, non-overlapping, and the left edges are aligned.
- [none](/documentation/swiftui/dragdroppreviewsformation/none) Drag images maintain their set positions relative to each other.
- [pile](/documentation/swiftui/dragdroppreviewsformation/pile) Drag images are placed on top of each other with random rotations.
- [stack](/documentation/swiftui/dragdroppreviewsformation/stack) Drag images are laid out overlapping diagonally.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
