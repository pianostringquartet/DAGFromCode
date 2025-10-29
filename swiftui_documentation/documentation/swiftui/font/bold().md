---
title: bold()
description: Adds bold or emphasized styling to the font.
source: https://developer.apple.com/documentation/swiftui/font/bold()
timestamp: 2025-10-29T00:10:14.989Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [font](/documentation/swiftui/font)

**Instance Method**

# bold()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds bold or emphasized styling to the font.

```swift
func bold() -> Font
```

## Discussion

For fonts created from text styles, it could mean applying emphasized styling, which does not necessarily mean the bold weight specifically, so this modifier is not to be confused with [weight(_:)](/documentation/SwiftUI/Font/weight(_:)).

For example:

```swift
Font.body.bold()
```

will most likely get you the emphasized version of body text style, which is often in [semibold](/documentation/SwiftUI/Font/Weight/semibold) weight. While

```swift
Font.body.weight(.bold)
```

will specifically get you the body text style font in the [bold](/documentation/SwiftUI/Font/Weight/bold) weight.

## Styling a font

- [italic()](/documentation/swiftui/font/italic())
- [monospaced()](/documentation/swiftui/font/monospaced())
- [monospacedDigit()](/documentation/swiftui/font/monospaceddigit())
- [smallCaps()](/documentation/swiftui/font/smallcaps())
- [lowercaseSmallCaps()](/documentation/swiftui/font/lowercasesmallcaps())
- [uppercaseSmallCaps()](/documentation/swiftui/font/uppercasesmallcaps())
- [weight(_:)](/documentation/swiftui/font/weight(_:))
- [width(_:)](/documentation/swiftui/font/width(_:))
- [Font.Width](/documentation/swiftui/font/width)
- [leading(_:)](/documentation/swiftui/font/leading(_:))
- [Font.Leading](/documentation/swiftui/font/leading)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
