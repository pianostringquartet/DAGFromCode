---
title: onMoveCommand(perform:)
description: Adds an action to perform in response to a move command, like when the user presses an arrow key on a Mac keyboard, or taps the edge of the Siri Remote when controlling an Apple TV.
source: https://developer.apple.com/documentation/swiftui/view/onmovecommand(perform:)
timestamp: 2025-10-29T00:13:57.163Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onMoveCommand(perform:)

**Available on:** macOS 10.15+, tvOS 13.0+

> Adds an action to perform in response to a move command, like when the user presses an arrow key on a Mac keyboard, or taps the edge of the Siri Remote when controlling an Apple TV.

```swift
nonisolated func onMoveCommand(perform action: ((MoveCommandDirection) -> Void)?) -> some View
```

## Responding to commands

- [onDeleteCommand(perform:)](/documentation/swiftui/view/ondeletecommand(perform:))
- [pageCommand(value:in:step:)](/documentation/swiftui/view/pagecommand(value:in:step:))
- [onExitCommand(perform:)](/documentation/swiftui/view/onexitcommand(perform:))
- [onPlayPauseCommand(perform:)](/documentation/swiftui/view/onplaypausecommand(perform:))
- [onCommand(_:perform:)](/documentation/swiftui/view/oncommand(_:perform:))
- [MoveCommandDirection](/documentation/swiftui/movecommanddirection)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
