---
title: textCase(_:)
description: Sets a transform for the case of the text contained in this view when displayed.
source: https://developer.apple.com/documentation/swiftui/view/textcase(_:)
timestamp: 2025-10-29T00:10:36.315Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# textCase(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Sets a transform for the case of the text contained in this view when displayed.

```swift
nonisolated func textCase(_ textCase: Text.Case?) -> some View
```

## Parameters

**textCase**

One of the [Case](/documentation/swiftui/text/case) enumerations; the default is `nil`.



## Return Value

A view that transforms the case of the text.

## Discussion

The default value is `nil`, displaying the text without any case changes.

## Controlling text style

- [bold(_:)](/documentation/swiftui/view/bold(_:))
- [italic(_:)](/documentation/swiftui/view/italic(_:))
- [underline(_:pattern:color:)](/documentation/swiftui/view/underline(_:pattern:color:))
- [strikethrough(_:pattern:color:)](/documentation/swiftui/view/strikethrough(_:pattern:color:))
- [textCase](/documentation/swiftui/environmentvalues/textcase)
- [monospaced(_:)](/documentation/swiftui/view/monospaced(_:))
- [monospacedDigit()](/documentation/swiftui/view/monospaceddigit())
- [AttributedTextFormattingDefinition](/documentation/swiftui/attributedtextformattingdefinition)
- [AttributedTextValueConstraint](/documentation/swiftui/attributedtextvalueconstraint)
- [AttributedTextFormatting](/documentation/swiftui/attributedtextformatting)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
