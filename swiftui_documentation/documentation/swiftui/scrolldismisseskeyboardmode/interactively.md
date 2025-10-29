---
title: interactively
description: Enable people to interactively dismiss the keyboard as part of the scroll operation.
source: https://developer.apple.com/documentation/swiftui/scrolldismisseskeyboardmode/interactively
timestamp: 2025-10-29T00:14:23.087Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrolldismisseskeyboardmode](/documentation/swiftui/scrolldismisseskeyboardmode)

**Type Property**

# interactively

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, watchOS 9.0+

> Enable people to interactively dismiss the keyboard as part of the scroll operation.

```swift
static var interactively: ScrollDismissesKeyboardMode { get }
```

## Discussion

The software keyboard’s position tracks the gesture that drives the scroll operation if the gesture crosses into the keyboard’s area of the display. People can dismiss the keyboard by scrolling it off the display, or reverse the direction of the scroll to cancel the dismissal.

## Getting modes

- [automatic](/documentation/swiftui/scrolldismisseskeyboardmode/automatic)
- [immediately](/documentation/swiftui/scrolldismisseskeyboardmode/immediately)
- [never](/documentation/swiftui/scrolldismisseskeyboardmode/never)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
