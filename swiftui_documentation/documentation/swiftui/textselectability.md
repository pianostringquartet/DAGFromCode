---
title: TextSelectability
description: A type that describes the ability to select text.
source: https://developer.apple.com/documentation/swiftui/textselectability
timestamp: 2025-10-29T00:09:58.291Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# TextSelectability

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> A type that describes the ability to select text.

```swift
protocol TextSelectability
```

## Overview

To configure whether people can select text in your app, use the [textSelection(_:)](/documentation/swiftui/view/textselection(_:)) modifier, passing in a text selectability value like [enabled](/documentation/swiftui/textselectability/enabled) or [disabled](/documentation/swiftui/textselectability/disabled).

## Conforming Types

- [DisabledTextSelectability](/documentation/swiftui/disabledtextselectability)
- [EnabledTextSelectability](/documentation/swiftui/enabledtextselectability)

## Getting selectability options

- [enabled](/documentation/swiftui/textselectability/enabled) A selectability value that enables text selection by a person using your app.
- [disabled](/documentation/swiftui/textselectability/disabled) A selectability value that disables text selection by the person using your app.

## Specifying selectability

- [allowsSelection](/documentation/swiftui/textselectability/allowsselection) A Boolean value that indicates whether the selectability type allows selection.

## Supporting types

- [EnabledTextSelectability](/documentation/swiftui/enabledtextselectability) A selectability type that enables text selection by the person using your app.
- [DisabledTextSelectability](/documentation/swiftui/disabledtextselectability) A selectability type that disables text selection by the person using your app.

## Selecting text

- [textSelection(_:)](/documentation/swiftui/view/textselection(_:))
- [TextSelection](/documentation/swiftui/textselection)
- [textSelectionAffinity(_:)](/documentation/swiftui/view/textselectionaffinity(_:))
- [textSelectionAffinity](/documentation/swiftui/environmentvalues/textselectionaffinity)
- [TextSelectionAffinity](/documentation/swiftui/textselectionaffinity)
- [AttributedTextSelection](/documentation/swiftui/attributedtextselection)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
