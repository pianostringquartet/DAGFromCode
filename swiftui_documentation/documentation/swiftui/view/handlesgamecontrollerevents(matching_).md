---
title: handlesGameControllerEvents(matching:)
description: Specifies the game controllers events which should be delivered through the GameController framework when the view, or one of its descendants has focus.
source: https://developer.apple.com/documentation/swiftui/view/handlesgamecontrollerevents(matching:)
timestamp: 2025-10-29T00:11:24.819Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# handlesGameControllerEvents(matching:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, visionOS 2.0+

> Specifies the game controllers events which should be delivered through the GameController framework when the view, or one of its descendants has focus.

```swift
nonisolated func handlesGameControllerEvents(matching types: GCUIEventTypes) -> some View
```

## Discussion

```swift
SpriteView(scene: MyGameScene())
.handlesGameControllerEvents(matching: .gamepad)
.focused(true)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
