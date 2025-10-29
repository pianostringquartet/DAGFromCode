---
title: monospaced(_:)
description: Modifies the fonts of all child views to use the fixed-width variant of the current font, if possible.
source: https://developer.apple.com/documentation/swiftui/view/monospaced(_:)
timestamp: 2025-10-29T00:10:01.690Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# monospaced(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Modifies the fonts of all child views to use the fixed-width variant of the current font, if possible.

```swift
nonisolated func monospaced(_ isActive: Bool = true) -> some View
```

## Return Value

A view whose child views’ fonts use fixed-width characters, while leaving other characters proportionally spaced.

## Discussion

If a child view’s base font doesn’t support fixed-width, the font remains unchanged.

## Controlling text style

- [bold(_:)](/documentation/swiftui/view/bold(_:))
- [italic(_:)](/documentation/swiftui/view/italic(_:))
- [underline(_:pattern:color:)](/documentation/swiftui/view/underline(_:pattern:color:))
- [strikethrough(_:pattern:color:)](/documentation/swiftui/view/strikethrough(_:pattern:color:))
- [textCase(_:)](/documentation/swiftui/view/textcase(_:))
- [textCase](/documentation/swiftui/environmentvalues/textcase)
- [monospacedDigit()](/documentation/swiftui/view/monospaceddigit())
- [AttributedTextFormattingDefinition](/documentation/swiftui/attributedtextformattingdefinition)
- [AttributedTextValueConstraint](/documentation/swiftui/attributedtextvalueconstraint)
- [AttributedTextFormatting](/documentation/swiftui/attributedtextformatting)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
