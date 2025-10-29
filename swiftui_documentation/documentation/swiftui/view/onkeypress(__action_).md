---
title: onKeyPress(_:action:)
description: Performs an action if the user presses a key on a hardware keyboard while the view has focus.
source: https://developer.apple.com/documentation/swiftui/view/onkeypress(_:action:)
timestamp: 2025-10-29T00:11:06.051Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onKeyPress(_:action:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Performs an action if the user presses a key on a hardware keyboard while the view has focus.

```swift
nonisolated func onKeyPress(_ key: KeyEquivalent, action: @escaping () -> KeyPress.Result) -> some View
```

## Parameters

**key**

The key to match against incoming hardware keyboard events.



**action**

The action to perform. Return `.handled` to consume the event and prevent further dispatch, or `.ignored` to allow dispatch to continue.



## Return Value

A modified view that binds hardware keyboard input when focused.

## Discussion

SwiftUI performs the action for key-down and key-repeat events.

## Responding to keyboard input

- [onKeyPress(phases:action:)](/documentation/swiftui/view/onkeypress(phases:action:))
- [onKeyPress(_:phases:action:)](/documentation/swiftui/view/onkeypress(_:phases:action:))
- [onKeyPress(characters:phases:action:)](/documentation/swiftui/view/onkeypress(characters:phases:action:))
- [onKeyPress(keys:phases:action:)](/documentation/swiftui/view/onkeypress(keys:phases:action:))
- [KeyPress](/documentation/swiftui/keypress)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
