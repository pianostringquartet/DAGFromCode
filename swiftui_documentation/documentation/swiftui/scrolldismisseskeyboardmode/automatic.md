---
title: automatic
description: Determine the mode automatically based on the surrounding context.
source: https://developer.apple.com/documentation/swiftui/scrolldismisseskeyboardmode/automatic
timestamp: 2025-10-29T00:13:58.546Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrolldismisseskeyboardmode](/documentation/swiftui/scrolldismisseskeyboardmode)

**Type Property**

# automatic

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, watchOS 9.0+

> Determine the mode automatically based on the surrounding context.

```swift
static var automatic: ScrollDismissesKeyboardMode { get }
```

## Discussion

By default, a [Text Editor](/documentation/swiftui/texteditor) is interactive while a [List](/documentation/swiftui/list) of scrollable content always dismiss the keyboard on a scroll, when linked against iOS 16 or later.

## Getting modes

- [immediately](/documentation/swiftui/scrolldismisseskeyboardmode/immediately)
- [interactively](/documentation/swiftui/scrolldismisseskeyboardmode/interactively)
- [never](/documentation/swiftui/scrolldismisseskeyboardmode/never)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
