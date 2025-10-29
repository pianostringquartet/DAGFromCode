---
title: onCommand(_:perform:)
description: Adds an action to perform in response to the given selector.
source: https://developer.apple.com/documentation/swiftui/view/oncommand(_:perform:)
timestamp: 2025-10-29T00:13:03.614Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onCommand(_:perform:)

**Available on:** macOS 10.15+

> Adds an action to perform in response to the given selector.

```swift
nonisolated func onCommand(_ selector: Selector, perform action: (() -> Void)?) -> some View
```

## Parameters

**selector**

The selector to register for `action`.



**action**

The action to perform. If `action` is `nil`, `command` keeps its association with this view but doesn’t trigger.



## Return Value

A view that triggers `action` when the `command` occurs.

## Discussion

This view or one of the views it contains must be in focus in order for the action to trigger. Other actions for the same command on views *closer* to the view in focus take priority, potentially overriding this action.

## Responding to commands

- [onMoveCommand(perform:)](/documentation/swiftui/view/onmovecommand(perform:))
- [onDeleteCommand(perform:)](/documentation/swiftui/view/ondeletecommand(perform:))
- [pageCommand(value:in:step:)](/documentation/swiftui/view/pagecommand(value:in:step:))
- [onExitCommand(perform:)](/documentation/swiftui/view/onexitcommand(perform:))
- [onPlayPauseCommand(perform:)](/documentation/swiftui/view/onplaypausecommand(perform:))
- [MoveCommandDirection](/documentation/swiftui/movecommanddirection)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
