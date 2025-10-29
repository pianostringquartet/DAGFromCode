---
title: leading(_:)
description: Adjusts the line spacing of a font.
source: https://developer.apple.com/documentation/swiftui/font/leading(_:)
timestamp: 2025-10-29T00:14:23.476Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [font](/documentation/swiftui/font)

**Instance Method**

# leading(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Adjusts the line spacing of a font.

```swift
func leading(_ leading: Font.Leading) -> Font
```

## Parameters

**leading**

The line spacing adjustment to apply.



## Return Value

A modified font that uses the specified line spacing, or the original font if it doesn’t support line spacing adjustments.

## Discussion

You can change a font’s line spacing while maintaining other characteristics of the font by applying this modifier. For example, you can decrease spacing of the [body](/documentation/swiftui/font/body) font by applying the [tight](/documentation/swiftui/font/leading/tight) value to it:

```swift
let myFont = Font.body.leading(.tight)
```

The availability of leading adjustments depends on the font. For some fonts, the modifier has no effect and returns the original font.

## Styling a font

- [bold()](/documentation/swiftui/font/bold())
- [italic()](/documentation/swiftui/font/italic())
- [monospaced()](/documentation/swiftui/font/monospaced())
- [monospacedDigit()](/documentation/swiftui/font/monospaceddigit())
- [smallCaps()](/documentation/swiftui/font/smallcaps())
- [lowercaseSmallCaps()](/documentation/swiftui/font/lowercasesmallcaps())
- [uppercaseSmallCaps()](/documentation/swiftui/font/uppercasesmallcaps())
- [weight(_:)](/documentation/swiftui/font/weight(_:))
- [width(_:)](/documentation/swiftui/font/width(_:))
- [Font.Width](/documentation/swiftui/font/width)
- [Font.Leading](/documentation/swiftui/font/leading)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
