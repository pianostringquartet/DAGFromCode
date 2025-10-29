---
title: onKeyPress(phases:action:)
description: Performs an action if the user presses any key on a hardware keyboard while the view has focus.
source: https://developer.apple.com/documentation/swiftui/view/onkeypress(phases:action:)
timestamp: 2025-10-29T00:09:54.274Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onKeyPress(phases:action:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Performs an action if the user presses any key on a hardware keyboard while the view has focus.

```swift
nonisolated func onKeyPress(phases: KeyPress.Phases = [.down, .repeat], action: @escaping (KeyPress) -> KeyPress.Result) -> some View
```

## Parameters

**phases**

The key-press phases to match (`.down`, `.repeat`, and `.up`). The default value is `[.down, .repeat]`.



**action**

The action to perform. The action receives a value describing the matched key event. Return `.handled` to consume the event and prevent further dispatch, or `.ignored` to allow dispatch to continue.



## Return Value

A modified view that binds hardware keyboard input when focused.

## Responding to keyboard input

- [onKeyPress(_:action:)](/documentation/swiftui/view/onkeypress(_:action:))
- [onKeyPress(_:phases:action:)](/documentation/swiftui/view/onkeypress(_:phases:action:))
- [onKeyPress(characters:phases:action:)](/documentation/swiftui/view/onkeypress(characters:phases:action:))
- [onKeyPress(keys:phases:action:)](/documentation/swiftui/view/onkeypress(keys:phases:action:))
- [KeyPress](/documentation/swiftui/keypress)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
