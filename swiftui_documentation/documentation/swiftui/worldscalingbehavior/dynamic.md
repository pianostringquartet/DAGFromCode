---
title: dynamic
description: The window will scale up as it moves further away, maintaining the same angular size.
source: https://developer.apple.com/documentation/swiftui/worldscalingbehavior/dynamic
timestamp: 2025-10-29T00:14:41.565Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [worldscalingbehavior](/documentation/swiftui/worldscalingbehavior)

**Type Property**

# dynamic

**Available on:** visionOS 2.0+

> The window will scale up as it moves further away, maintaining the same angular size.

```swift
static var dynamic: WorldScalingBehavior { get }
```

## Discussion

Prefer dynamic window scaling for windows that display dense UI or a lot of text. Using dynamic scaling ensures that controls and text remain at a comfortable size regardless of the window’s position.

For further information, see [spatial-layout#Scale](/design/Human-Interface-Guidelines/spatial-layout) in the Human Interface Guidelines.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
