---
title: onDeleteCommand(perform:)
description: Adds an action to perform in response to the system’s Delete command, or pressing either the ⌫ (backspace) or ⌦ (forward delete) keys while the view has focus.
source: https://developer.apple.com/documentation/swiftui/view/ondeletecommand(perform:)
timestamp: 2025-10-29T00:13:47.024Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onDeleteCommand(perform:)

**Available on:** macOS 10.15+

> Adds an action to perform in response to the system’s Delete command, or pressing either the ⌫ (backspace) or ⌦ (forward delete) keys while the view has focus.

```swift
nonisolated func onDeleteCommand(perform action: (() -> Void)?) -> some View
```

## Responding to commands

- [onMoveCommand(perform:)](/documentation/swiftui/view/onmovecommand(perform:))
- [pageCommand(value:in:step:)](/documentation/swiftui/view/pagecommand(value:in:step:))
- [onExitCommand(perform:)](/documentation/swiftui/view/onexitcommand(perform:))
- [onPlayPauseCommand(perform:)](/documentation/swiftui/view/onplaypausecommand(perform:))
- [onCommand(_:perform:)](/documentation/swiftui/view/oncommand(_:perform:))
- [MoveCommandDirection](/documentation/swiftui/movecommanddirection)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
