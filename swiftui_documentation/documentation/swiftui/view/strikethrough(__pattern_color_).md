---
title: strikethrough(_:pattern:color:)
description: Applies a strikethrough to the text in this view.
source: https://developer.apple.com/documentation/swiftui/view/strikethrough(_:pattern:color:)
timestamp: 2025-10-29T00:10:44.768Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# strikethrough(_:pattern:color:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Applies a strikethrough to the text in this view.

```swift
nonisolated func strikethrough(_ isActive: Bool = true, pattern: Text.LineStyle.Pattern = .solid, color: Color? = nil) -> some View
```

## Parameters

**isActive**

A Boolean value that indicates whether strikethrough is added. The default value is `true`.



**pattern**

The pattern of the line. The default value is `solid`.



**color**

The color of the strikethrough. If `color` is `nil`, the strikethrough uses the default foreground color.



## Return Value

A view where text has a line through its center.

## Controlling text style

- [bold(_:)](/documentation/swiftui/view/bold(_:))
- [italic(_:)](/documentation/swiftui/view/italic(_:))
- [underline(_:pattern:color:)](/documentation/swiftui/view/underline(_:pattern:color:))
- [textCase(_:)](/documentation/swiftui/view/textcase(_:))
- [textCase](/documentation/swiftui/environmentvalues/textcase)
- [monospaced(_:)](/documentation/swiftui/view/monospaced(_:))
- [monospacedDigit()](/documentation/swiftui/view/monospaceddigit())
- [AttributedTextFormattingDefinition](/documentation/swiftui/attributedtextformattingdefinition)
- [AttributedTextValueConstraint](/documentation/swiftui/attributedtextvalueconstraint)
- [AttributedTextFormatting](/documentation/swiftui/attributedtextformatting)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
