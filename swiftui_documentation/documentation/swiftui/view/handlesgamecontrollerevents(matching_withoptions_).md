---
title: handlesGameControllerEvents(matching:withOptions:)
description: Specifies the game controllers events which should be delivered through the GameController framework when the view or one of its descendants has focus.
source: https://developer.apple.com/documentation/swiftui/view/handlesgamecontrollerevents(matching:withoptions:)
timestamp: 2025-10-29T00:13:16.222Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# handlesGameControllerEvents(matching:withOptions:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, visionOS 26.0+

> Specifies the game controllers events which should be delivered through the GameController framework when the view or one of its descendants has focus.

```swift
nonisolated func handlesGameControllerEvents(matching types: GCUIEventTypes, withOptions options: GameControllerEventHandlingOptions?) -> some View
```

## Discussion

```swift
SpriteView(scene: MyGameScene())
.handlesGameControllerEvents(matching: .gamepad, withOptions: .defaultOptions)
.focused(true)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
