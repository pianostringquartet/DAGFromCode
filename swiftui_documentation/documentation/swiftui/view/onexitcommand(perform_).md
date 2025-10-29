---
title: onExitCommand(perform:)
description: Sets up an action that triggers in response to receiving the exit command while the view has focus.
source: https://developer.apple.com/documentation/swiftui/view/onexitcommand(perform:)
timestamp: 2025-10-29T00:14:47.196Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onExitCommand(perform:)

**Available on:** macOS 10.15+, tvOS 13.0+

> Sets up an action that triggers in response to receiving the exit command while the view has focus.

```swift
nonisolated func onExitCommand(perform action: (() -> Void)?) -> some View
```

## Discussion

The user generates an exit command by pressing the Menu button on tvOS, or the escape key on macOS.

## Responding to commands

- [onMoveCommand(perform:)](/documentation/swiftui/view/onmovecommand(perform:))
- [onDeleteCommand(perform:)](/documentation/swiftui/view/ondeletecommand(perform:))
- [pageCommand(value:in:step:)](/documentation/swiftui/view/pagecommand(value:in:step:))
- [onPlayPauseCommand(perform:)](/documentation/swiftui/view/onplaypausecommand(perform:))
- [onCommand(_:perform:)](/documentation/swiftui/view/oncommand(_:perform:))
- [MoveCommandDirection](/documentation/swiftui/movecommanddirection)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
