---
title: ScrollDismissesKeyboardMode
description: The ways that scrollable content can interact with the software keyboard.
source: https://developer.apple.com/documentation/swiftui/scrolldismisseskeyboardmode
timestamp: 2025-10-29T00:12:52.219Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ScrollDismissesKeyboardMode

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, watchOS 9.0+

> The ways that scrollable content can interact with the software keyboard.

```swift
struct ScrollDismissesKeyboardMode
```

## Overview

Use this type in a call to the [scrollDismissesKeyboard(_:)](/documentation/swiftui/view/scrolldismisseskeyboard(_:)) modifier to specify the dismissal behavior of scrollable views.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting modes

- [automatic](/documentation/swiftui/scrolldismisseskeyboardmode/automatic) Determine the mode automatically based on the surrounding context.
- [immediately](/documentation/swiftui/scrolldismisseskeyboardmode/immediately) Dismiss the keyboard as soon as scrolling starts.
- [interactively](/documentation/swiftui/scrolldismisseskeyboardmode/interactively) Enable people to interactively dismiss the keyboard as part of the scroll operation.
- [never](/documentation/swiftui/scrolldismisseskeyboardmode/never) Never dismiss the keyboard automatically as a result of scrolling.

## Interacting with a software keyboard

- [scrollDismissesKeyboard(_:)](/documentation/swiftui/view/scrolldismisseskeyboard(_:))
- [scrollDismissesKeyboardMode](/documentation/swiftui/environmentvalues/scrolldismisseskeyboardmode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
