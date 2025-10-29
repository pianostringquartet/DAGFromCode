---
title: bold()
description: Applies a bold or emphasized treatment to the fonts of the text.
source: https://developer.apple.com/documentation/swiftui/text/bold()
timestamp: 2025-10-29T00:13:32.752Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# bold()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Applies a bold or emphasized treatment to the fonts of the text.

```swift
nonisolated func bold() -> Text
```

## Return Value

Bold or emphasized text.

## Discussion

For fonts created from text styles, it could mean applying emphasized styling, which does not necessarily mean the bold weight specifically, so this modifier is not to be confused with [fontWeight(_:)](/documentation/SwiftUI/Text/fontWeight(_:)).

For example:

```swift
Text("hello").font(.body).bold()
```

will most likely get you the emphasized version of body text style, which is often in [semibold](/documentation/SwiftUI/Font/Weight/semibold) weight. While

```swift
Text("hello").font(.body).fontWeight(.bold)
```

will specifically get you the body text style font in the [bold](/documentation/SwiftUI/Font/Weight/bold) weight.

## Styling the view’s text

- [foregroundStyle(_:)](/documentation/swiftui/text/foregroundstyle(_:))
- [bold(_:)](/documentation/swiftui/text/bold(_:))
- [italic()](/documentation/swiftui/text/italic())
- [italic(_:)](/documentation/swiftui/text/italic(_:))
- [strikethrough(_:color:)](/documentation/swiftui/text/strikethrough(_:color:))
- [strikethrough(_:pattern:color:)](/documentation/swiftui/text/strikethrough(_:pattern:color:))
- [underline(_:color:)](/documentation/swiftui/text/underline(_:color:))
- [underline(_:pattern:color:)](/documentation/swiftui/text/underline(_:pattern:color:))
- [monospaced(_:)](/documentation/swiftui/text/monospaced(_:))
- [monospacedDigit()](/documentation/swiftui/text/monospaceddigit())
- [kerning(_:)](/documentation/swiftui/text/kerning(_:))
- [tracking(_:)](/documentation/swiftui/text/tracking(_:))
- [baselineOffset(_:)](/documentation/swiftui/text/baselineoffset(_:))
- [Text.Case](/documentation/swiftui/text/case)
- [Text.DateStyle](/documentation/swiftui/text/datestyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
